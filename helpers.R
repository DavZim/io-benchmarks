# General Libraries
suppressPackageStartupMessages(library(tidyverse)) # for general data manipulation
library(stringr)
options(digits.secs = 3)

req_pkgs <- c(
  # libs to be compared
  "readr", "data.table", "vroom", "fst", "qs", "feather", "arrow",
  # data and other
  "nycflights13", "bench"
)
mis_pkgs <- setdiff(req_pkgs, rownames(installed.packages()))

if (length(mis_pkgs) > 1) stop(glue::glue("The following packages are missing: '{paste(mis_pkgs, collapse=\"', '\")}'"))
if (!arrow::arrow_available()) stop("arrow is not available, install with arrow::install_arrow()")

# Libraries that are to be compared:
# library(readr)
# library(data.table)
# library(vroom)
# library(fst)
# library(qs)
# library(feather)
# library(arrow)

##############################################################################################################################
# Device Information ----
##############################################################################################################################
# Dell XPS 15 Laptop
# CPU: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz (8th Generation) w/ 6 cores, 12 threads
# RAM: 32 GB
# SSD with ~900 MB/sec read speed
# devtools::session_info()


##############################################################################################################################
# Functions for reading and writing the data ----
##############################################################################################################################

## Read/Write functions that will be used
### csv format
base_write <- function(d, file) write.csv(d, file = file)
base_read  <- function(file) read.csv(file, stringsAsFactors = FALSE)

readr_write <- function(d, file) readr::write_csv(d, path = file)
readr_read  <- function(file) readr::read_csv(file, col_types = readr::cols(), progress = FALSE)

datatable_write <- function(d, file) data.table::fwrite(d, file = file)
datatable_read  <- function(file) data.table::fread(file, showProgress = FALSE)

vroom_write <- function(d, file) vroom::vroom_write(d, path = file, progress = FALSE)
vroom_read  <- function(file) vroom::vroom(file, col_types = vroom::cols(), progress = FALSE)

### other formats
base_rds_write <- function(d, file, compression = TRUE) saveRDS(d, file, compress = compression)
base_rds_read  <- function(file) readRDS(file)

readr_rds_write <- function(d, file, compression = "none") readr::write_rds(d, file, compress = compression)
readr_rds_read  <- function(file) readr::read_rds(file)

fst_write <- function(d, file, compression = 50) fst::write_fst(d, file, compress = compression)
fst_read  <- function(file) fst::read_fst(file)

qs_write <- function(d, file, compression = "high") qs::qsave(d, file, preset = compression)
qs_read <- function(file) qs::qread(file)

feather_write <- function(d, file) feather::write_feather(d, file)
feather_read <- function(file) feather::read_feather(file)

arrow_write <- function(d, file) arrow::write_arrow(d, file)
arrow_read  <- function(file) arrow::read_arrow(file)

arrow_feather_write <- function(d, file) arrow::write_feather(d, file)
arrow_feather_read  <- function(file) arrow::read_feather(file)

arrow_parquet_write <- function(d, file) arrow::write_parquet(d, file)
arrow_parquet_read  <- function(file) arrow::read_parquet(file)

function_map <- list(
  "base->csv"        = list("read_function" = base_read,          "write_function" = base_write,          "convert" = as.data.frame),
  "readr->csv"       = list("read_function" = readr_read,         "write_function" = readr_write,         "convert" = tibble::as_tibble),
  "datatable->csv"   = list("read_function" = datatable_read,     "write_function" = datatable_write,     "convert" = data.table::as.data.table),
  "vroom->csv"       = list("read_function" = vroom_read,         "write_function" = vroom_write,         "convert" = tibble::as_tibble),
  "base->rds"        = list("read_function" = base_rds_read,      "write_function" = base_rds_write,      "convert" = as.data.frame),
  "readr->rds"       = list("read_function" = readr_rds_read,     "write_function" = readr_rds_write,     "convert" = tibble::as_tibble),
  "fst->fst"         = list("read_function" = fst_read,           "write_function" = fst_write,           "convert" = NULL),
  "qs->qs"           = list("read_function" = qs_read,            "write_function" = qs_write,            "convert" = NULL),
  "feather->feather" = list("read_function" = feather_read,       "write_function" = feather_write,       "convert" = tibble::as_tibble),
  "arrow->feather"   = list("read_function" = arrow_feather_read, "write_function" = arrow_feather_write, "convert" = tibble::as_tibble),
  "arrow->arrow"     = list("read_function" = arrow_read,         "write_function" = arrow_write,         "convert" = tibble::as_tibble),
  "arrow->parquet"   = list("read_function" = arrow_parquet_read, "write_function" = arrow_parquet_write, "convert" = tibble::as_tibble)
)

# simple logger function
log <- function(txt) {
  cat(glue::glue("  [{format(Sys.time(), '%Y-%m-%d %H:%M:%OS')}] {glue(txt)}"), "\n")
}

# writes a null dataset that contains NA for the timing (is written before the benchmarks start, so that if the benchmark fails, the timings are NA)
write_null_dataset <- function(pkg, readwrite, filetype, dataset_name, compression, file) {
  null <- tibble::tibble(library = pkg, operation = readwrite, filetype = filetype,
                         dataset = dataset_name, compression = compression,
                         time = NA, object_size = NA, filesize = NA, speed = NA, mem_alloc = NA, 
                         n_itr = 0, gc = NA, gc_level0 = NA, gc_level1 = NA, gc_level2 = NA)
  
  qs::qsave(null, file, preset="archive")
}


# constructs the outfile for a given set of parameters
construct_outfile <- function(pkg, filetype, read, dataset_name, compression) {
  compression_txt <- ifelse(!is.na(compression), glue::glue("_{compression}"), "")
  readwrite <- ifelse(read, "read", "write")
  glue::glue("results/timing-{filetype}-{pkg}{compression_txt}-{readwrite}-{dataset_name}.qs")
}


