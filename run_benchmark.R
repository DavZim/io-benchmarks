#!/usr/bin/Rscript
t0 <- Sys.time()

library(optparse, quietly = TRUE, warn.conflicts = FALSE)
suppressPackageStartupMessages(library(tidyverse))
library(glue, quietly = TRUE, warn.conflicts = FALSE)
source("helpers.R")

parser <- OptionParser() %>% 
  add_option(c("-p", "--package"), help="The package it should use") %>% 
  add_option(c("-f", "--filetype"), help="The filetype it should output to") %>% 
  add_option(c("-d", "--dataset"), help="The dataset to test against") %>% 
  add_option(c("-r", "--read"), action="store_true", default=FALSE, help="If the test should be done for reading or writing (default read)") %>% 
  add_option(c("-c", "--compression"), help="The compression used for writing the data")

args <- parse_args(parser)

if (!all(c("package", "filetype", "dataset") %in% names(args))) stop("'package', 'filetype', and 'dataset' must be supplied")

#' args <- list(package="readr", filetype="rds", read=TRUE, dataset="medium", compression="xz")

pkg <- args$package
filetype <- args$filetype
read <-  args$read
dataset <- args$dataset
readwrite <- ifelse(read, "read", "write")
compression <- ifelse(is.null(args$compression), NA, args$compression)

# all initial datasets are stored as .qs data
if (!stringr::str_detect(dataset, "\\.qs$")) dataset <- paste0(dataset, ".qs")

dataset_name <- stringr::str_extract(dataset, "^[^.]+")
outfile <- construct_outfile(pkg, filetype, read, dataset_name, compression)

compression_txt <- ifelse(is.na(compression), "", glue("({compression})"))

log("Benchmarking '{pkg}{compression_txt}->{filetype}' for operation '{readwrite}' for dataset '{dataset}' to file '{outfile}'")

spec <- function_map[[glue("{pkg}->{filetype}")]]

# in case the benchmark crashes, have the NULL values at least!
write_null_dataset(pkg, readwrite, filetype, dataset_name, compression, outfile)

file <- tempfile()

datafile <- glue("data/{dataset}")
# log("... Loading Dataset '{datafile}'")
qs_data <- qs::qread(datafile)

if (is.null(spec[["convert"]])) {
  # no conversion needed
  data <- qs_data
} else {
  data <- spec[["convert"]](qs_data)
}

object_size <- as.numeric(object.size(data))

read_function <- spec[["read_function"]]
write_function <- spec[["write_function"]]

min_time <- 20
min_iterations <- 2
max_iterations <- 1000
filter_gc <- FALSE

if (args$read) {
  # read-timings
  write_function(data, file = file)
  
  timings <- bench::mark(read = read_function(file), 
                         min_time = min_time, min_iterations = min_iterations,
                         max_iterations = max_iterations, filter_gc = filter_gc)
} else {
  # write-timings
  if (!is.na(compression)) {
    timings <- bench::mark(write = write_function(data, file, compression), 
                           min_time = min_time, min_iterations = min_iterations,
                           max_iterations = max_iterations, filter_gc = filter_gc)
  } else {
    timings <- bench::mark(write = write_function(data, file), 
                           min_time = min_time, min_iterations = min_iterations,
                           max_iterations = max_iterations, filter_gc = filter_gc)
  }
}

timings <- timings %>% 
  mutate(library = pkg, 
         operation = readwrite,
         dataset = dataset_name,
         compression = compression,
         filetype = filetype,
         filesize = file.info(file)[["size"]],
         object_size = object_size) %>% 
  mutate(data = map2(gc, time, ~tibble(gc = .x, time = .y))) %>% 
  unnest_longer(data) %>% 
  mutate(gc_level0 = data$gc$level0, 
         gc_level1 = data$gc$level1, 
         gc_level2 = data$gc$level2, 
         gc = gc_level0 | gc_level1 | gc_level2,
         time = data$time,
         speed = object_size / time) %>% 
  mutate_at(vars(time, mem_alloc, speed), as.numeric) %>% 
  select(library, operation, filetype, dataset, compression,
         time, object_size, filesize, speed, mem_alloc, n_itr, gc, gc_level0, gc_level1, gc_level2)

qs::qsave(timings, outfile, preset="archive")

dt <- difftime(Sys.time(), t0, units = "secs") %>% as.numeric()
log(glue("=== Finished writing to '{outfile}' in {prettyunits::pretty_sec(dt)} ===\n"))
