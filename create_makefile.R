suppressPackageStartupMessages(library(tidyverse))
library(glue, warn.conflicts = FALSE)
source("helpers.R")

specs <- crossing(
  pkg = c(
    # csv
    "base->csv", "readr->csv", "datatable->csv", "vroom->csv", 
    # r specific
    "base->rds", "base(gzip)->rds", "base(bzip2)->rds", "base(xz)->rds", "readr->rds", "readr(gz)->rds", "readr(bz2)->rds", "readr(xz)->rds",  "fst->fst", "fst(0)->fst","fst(100)->fst",  "qs->qs", "qs(archive)->qs", "qs(balanced)->qs", "qs(fast)->qs",
    # other
    "feather->feather", "arrow->feather", "arrow->parquet", "arrow->arrow"
  ),
  read = c(TRUE, FALSE),
  dataset = c("tiny", "small", "medium", "wide", "large", "nycflights", "tickets2018")
) %>%
  separate(pkg, into = c("pkg", "filetype"), sep = "->") %>% 
  separate(pkg, into = c("pkg", "compression"), sep = "\\(", fill = "right") %>% 
  mutate(compression = gsub("\\)", "", compression)) %>% 
  mutate(outfile = construct_outfile(pkg, filetype, read, dataset, compression))

f <- "Makefile"

write_lines(glue("
### DO NOT EDIT BY HAND
### This file was created by 'create_makefile.R' on {Sys.time()}

DATAFILES := data/nycflights.qs data/wide.qs data/medium.qs data/tiny.qs data/small.qs data/large.qs 
# data/tickets2018.qs does not need to be rebuilt every time!

"), f, append = FALSE)

files <- paste(specs$outfile, collapse = " \\\n  ")

file_deps <- glue("RESULTFILES := {files}")

write_lines(file_deps, f, append = TRUE)


write_lines("
### Targets

.PHONY: all data clean

all: data benchmark

data: $(DATAFILES)
benchmark: $(RESULTFILES)

clean:
\t-rm -f data/nycflights.qs data/wide.qs data/medium.qs data/tiny.qs data/small.qs data/large.qs
\t-rm -f results/*.rds

# rules for the dataset files: for each datafile, check and create if needed.
$(foreach D, $(DATAFILES), $(eval $D: make_datasets.R ; @echo \"  Data '$D' out of date running 'Rscript make_datasets.R'\" && Rscript make_datasets.R))

", f, append = TRUE)

write_lines("### File Dependencies", f, append = TRUE)
base_txt <- "

{outfile} : run_benchmark.R helpers.R data/{dataset}.qs
\t-Rscript run_benchmark.R --package {pkg} --filetype {filetype} --data {dataset}{read_args}{compression_args}
"

for (i in seq_len(nrow(specs))) {
  pkg <- specs$pkg[i]
  filetype <- specs$filetype[i]
  dataset <- specs$dataset[i]
  compression <- specs$compression[i]
  read <- specs$read[i]
  outfile <- specs$outfile[i]
  
  compression_args <- ifelse(is.na(compression), "", glue(" --compression {compression}"))
  read_args <- ifelse(read, " --read", "")
  
  txt <- glue(base_txt)
  
  write_lines(txt, f, append = TRUE)
}

cat(glue::glue("Done creating makefile with {nrow(specs)} specifications, run 'make' to run the benchmarks"), "\n")