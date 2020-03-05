### DO NOT EDIT BY HAND
### This file was created by 'create_makefile.R' on 2020-03-04 18:23:00.106

DATAFILES := data/nycflights.qs data/wide.qs data/medium.qs data/tiny.qs data/small.qs data/large.qs 
# data/tickets2018.qs does not need to be rebuilt every time!

RESULTFILES := results/timing-arrow-arrow-write-large.qs \
  results/timing-arrow-arrow-write-medium.qs \
  results/timing-arrow-arrow-write-nycflights.qs \
  results/timing-arrow-arrow-write-small.qs \
  results/timing-arrow-arrow-write-tickets2018.qs \
  results/timing-arrow-arrow-write-tiny.qs \
  results/timing-arrow-arrow-write-wide.qs \
  results/timing-arrow-arrow-read-large.qs \
  results/timing-arrow-arrow-read-medium.qs \
  results/timing-arrow-arrow-read-nycflights.qs \
  results/timing-arrow-arrow-read-small.qs \
  results/timing-arrow-arrow-read-tickets2018.qs \
  results/timing-arrow-arrow-read-tiny.qs \
  results/timing-arrow-arrow-read-wide.qs \
  results/timing-feather-arrow-write-large.qs \
  results/timing-feather-arrow-write-medium.qs \
  results/timing-feather-arrow-write-nycflights.qs \
  results/timing-feather-arrow-write-small.qs \
  results/timing-feather-arrow-write-tickets2018.qs \
  results/timing-feather-arrow-write-tiny.qs \
  results/timing-feather-arrow-write-wide.qs \
  results/timing-feather-arrow-read-large.qs \
  results/timing-feather-arrow-read-medium.qs \
  results/timing-feather-arrow-read-nycflights.qs \
  results/timing-feather-arrow-read-small.qs \
  results/timing-feather-arrow-read-tickets2018.qs \
  results/timing-feather-arrow-read-tiny.qs \
  results/timing-feather-arrow-read-wide.qs \
  results/timing-parquet-arrow-write-large.qs \
  results/timing-parquet-arrow-write-medium.qs \
  results/timing-parquet-arrow-write-nycflights.qs \
  results/timing-parquet-arrow-write-small.qs \
  results/timing-parquet-arrow-write-tickets2018.qs \
  results/timing-parquet-arrow-write-tiny.qs \
  results/timing-parquet-arrow-write-wide.qs \
  results/timing-parquet-arrow-read-large.qs \
  results/timing-parquet-arrow-read-medium.qs \
  results/timing-parquet-arrow-read-nycflights.qs \
  results/timing-parquet-arrow-read-small.qs \
  results/timing-parquet-arrow-read-tickets2018.qs \
  results/timing-parquet-arrow-read-tiny.qs \
  results/timing-parquet-arrow-read-wide.qs \
  results/timing-csv-base-write-large.qs \
  results/timing-csv-base-write-medium.qs \
  results/timing-csv-base-write-nycflights.qs \
  results/timing-csv-base-write-small.qs \
  results/timing-csv-base-write-tickets2018.qs \
  results/timing-csv-base-write-tiny.qs \
  results/timing-csv-base-write-wide.qs \
  results/timing-csv-base-read-large.qs \
  results/timing-csv-base-read-medium.qs \
  results/timing-csv-base-read-nycflights.qs \
  results/timing-csv-base-read-small.qs \
  results/timing-csv-base-read-tickets2018.qs \
  results/timing-csv-base-read-tiny.qs \
  results/timing-csv-base-read-wide.qs \
  results/timing-rds-base-write-large.qs \
  results/timing-rds-base-write-medium.qs \
  results/timing-rds-base-write-nycflights.qs \
  results/timing-rds-base-write-small.qs \
  results/timing-rds-base-write-tickets2018.qs \
  results/timing-rds-base-write-tiny.qs \
  results/timing-rds-base-write-wide.qs \
  results/timing-rds-base-read-large.qs \
  results/timing-rds-base-read-medium.qs \
  results/timing-rds-base-read-nycflights.qs \
  results/timing-rds-base-read-small.qs \
  results/timing-rds-base-read-tickets2018.qs \
  results/timing-rds-base-read-tiny.qs \
  results/timing-rds-base-read-wide.qs \
  results/timing-rds-base_bzip2-write-large.qs \
  results/timing-rds-base_bzip2-write-medium.qs \
  results/timing-rds-base_bzip2-write-nycflights.qs \
  results/timing-rds-base_bzip2-write-small.qs \
  results/timing-rds-base_bzip2-write-tickets2018.qs \
  results/timing-rds-base_bzip2-write-tiny.qs \
  results/timing-rds-base_bzip2-write-wide.qs \
  results/timing-rds-base_bzip2-read-large.qs \
  results/timing-rds-base_bzip2-read-medium.qs \
  results/timing-rds-base_bzip2-read-nycflights.qs \
  results/timing-rds-base_bzip2-read-small.qs \
  results/timing-rds-base_bzip2-read-tickets2018.qs \
  results/timing-rds-base_bzip2-read-tiny.qs \
  results/timing-rds-base_bzip2-read-wide.qs \
  results/timing-rds-base_gzip-write-large.qs \
  results/timing-rds-base_gzip-write-medium.qs \
  results/timing-rds-base_gzip-write-nycflights.qs \
  results/timing-rds-base_gzip-write-small.qs \
  results/timing-rds-base_gzip-write-tickets2018.qs \
  results/timing-rds-base_gzip-write-tiny.qs \
  results/timing-rds-base_gzip-write-wide.qs \
  results/timing-rds-base_gzip-read-large.qs \
  results/timing-rds-base_gzip-read-medium.qs \
  results/timing-rds-base_gzip-read-nycflights.qs \
  results/timing-rds-base_gzip-read-small.qs \
  results/timing-rds-base_gzip-read-tickets2018.qs \
  results/timing-rds-base_gzip-read-tiny.qs \
  results/timing-rds-base_gzip-read-wide.qs \
  results/timing-rds-base_xz-write-large.qs \
  results/timing-rds-base_xz-write-medium.qs \
  results/timing-rds-base_xz-write-nycflights.qs \
  results/timing-rds-base_xz-write-small.qs \
  results/timing-rds-base_xz-write-tickets2018.qs \
  results/timing-rds-base_xz-write-tiny.qs \
  results/timing-rds-base_xz-write-wide.qs \
  results/timing-rds-base_xz-read-large.qs \
  results/timing-rds-base_xz-read-medium.qs \
  results/timing-rds-base_xz-read-nycflights.qs \
  results/timing-rds-base_xz-read-small.qs \
  results/timing-rds-base_xz-read-tickets2018.qs \
  results/timing-rds-base_xz-read-tiny.qs \
  results/timing-rds-base_xz-read-wide.qs \
  results/timing-csv-datatable-write-large.qs \
  results/timing-csv-datatable-write-medium.qs \
  results/timing-csv-datatable-write-nycflights.qs \
  results/timing-csv-datatable-write-small.qs \
  results/timing-csv-datatable-write-tickets2018.qs \
  results/timing-csv-datatable-write-tiny.qs \
  results/timing-csv-datatable-write-wide.qs \
  results/timing-csv-datatable-read-large.qs \
  results/timing-csv-datatable-read-medium.qs \
  results/timing-csv-datatable-read-nycflights.qs \
  results/timing-csv-datatable-read-small.qs \
  results/timing-csv-datatable-read-tickets2018.qs \
  results/timing-csv-datatable-read-tiny.qs \
  results/timing-csv-datatable-read-wide.qs \
  results/timing-feather-feather-write-large.qs \
  results/timing-feather-feather-write-medium.qs \
  results/timing-feather-feather-write-nycflights.qs \
  results/timing-feather-feather-write-small.qs \
  results/timing-feather-feather-write-tickets2018.qs \
  results/timing-feather-feather-write-tiny.qs \
  results/timing-feather-feather-write-wide.qs \
  results/timing-feather-feather-read-large.qs \
  results/timing-feather-feather-read-medium.qs \
  results/timing-feather-feather-read-nycflights.qs \
  results/timing-feather-feather-read-small.qs \
  results/timing-feather-feather-read-tickets2018.qs \
  results/timing-feather-feather-read-tiny.qs \
  results/timing-feather-feather-read-wide.qs \
  results/timing-fst-fst-write-large.qs \
  results/timing-fst-fst-write-medium.qs \
  results/timing-fst-fst-write-nycflights.qs \
  results/timing-fst-fst-write-small.qs \
  results/timing-fst-fst-write-tickets2018.qs \
  results/timing-fst-fst-write-tiny.qs \
  results/timing-fst-fst-write-wide.qs \
  results/timing-fst-fst-read-large.qs \
  results/timing-fst-fst-read-medium.qs \
  results/timing-fst-fst-read-nycflights.qs \
  results/timing-fst-fst-read-small.qs \
  results/timing-fst-fst-read-tickets2018.qs \
  results/timing-fst-fst-read-tiny.qs \
  results/timing-fst-fst-read-wide.qs \
  results/timing-fst-fst_0-write-large.qs \
  results/timing-fst-fst_0-write-medium.qs \
  results/timing-fst-fst_0-write-nycflights.qs \
  results/timing-fst-fst_0-write-small.qs \
  results/timing-fst-fst_0-write-tickets2018.qs \
  results/timing-fst-fst_0-write-tiny.qs \
  results/timing-fst-fst_0-write-wide.qs \
  results/timing-fst-fst_0-read-large.qs \
  results/timing-fst-fst_0-read-medium.qs \
  results/timing-fst-fst_0-read-nycflights.qs \
  results/timing-fst-fst_0-read-small.qs \
  results/timing-fst-fst_0-read-tickets2018.qs \
  results/timing-fst-fst_0-read-tiny.qs \
  results/timing-fst-fst_0-read-wide.qs \
  results/timing-fst-fst_100-write-large.qs \
  results/timing-fst-fst_100-write-medium.qs \
  results/timing-fst-fst_100-write-nycflights.qs \
  results/timing-fst-fst_100-write-small.qs \
  results/timing-fst-fst_100-write-tickets2018.qs \
  results/timing-fst-fst_100-write-tiny.qs \
  results/timing-fst-fst_100-write-wide.qs \
  results/timing-fst-fst_100-read-large.qs \
  results/timing-fst-fst_100-read-medium.qs \
  results/timing-fst-fst_100-read-nycflights.qs \
  results/timing-fst-fst_100-read-small.qs \
  results/timing-fst-fst_100-read-tickets2018.qs \
  results/timing-fst-fst_100-read-tiny.qs \
  results/timing-fst-fst_100-read-wide.qs \
  results/timing-qs-qs-write-large.qs \
  results/timing-qs-qs-write-medium.qs \
  results/timing-qs-qs-write-nycflights.qs \
  results/timing-qs-qs-write-small.qs \
  results/timing-qs-qs-write-tickets2018.qs \
  results/timing-qs-qs-write-tiny.qs \
  results/timing-qs-qs-write-wide.qs \
  results/timing-qs-qs-read-large.qs \
  results/timing-qs-qs-read-medium.qs \
  results/timing-qs-qs-read-nycflights.qs \
  results/timing-qs-qs-read-small.qs \
  results/timing-qs-qs-read-tickets2018.qs \
  results/timing-qs-qs-read-tiny.qs \
  results/timing-qs-qs-read-wide.qs \
  results/timing-qs-qs_archive-write-large.qs \
  results/timing-qs-qs_archive-write-medium.qs \
  results/timing-qs-qs_archive-write-nycflights.qs \
  results/timing-qs-qs_archive-write-small.qs \
  results/timing-qs-qs_archive-write-tickets2018.qs \
  results/timing-qs-qs_archive-write-tiny.qs \
  results/timing-qs-qs_archive-write-wide.qs \
  results/timing-qs-qs_archive-read-large.qs \
  results/timing-qs-qs_archive-read-medium.qs \
  results/timing-qs-qs_archive-read-nycflights.qs \
  results/timing-qs-qs_archive-read-small.qs \
  results/timing-qs-qs_archive-read-tickets2018.qs \
  results/timing-qs-qs_archive-read-tiny.qs \
  results/timing-qs-qs_archive-read-wide.qs \
  results/timing-qs-qs_balanced-write-large.qs \
  results/timing-qs-qs_balanced-write-medium.qs \
  results/timing-qs-qs_balanced-write-nycflights.qs \
  results/timing-qs-qs_balanced-write-small.qs \
  results/timing-qs-qs_balanced-write-tickets2018.qs \
  results/timing-qs-qs_balanced-write-tiny.qs \
  results/timing-qs-qs_balanced-write-wide.qs \
  results/timing-qs-qs_balanced-read-large.qs \
  results/timing-qs-qs_balanced-read-medium.qs \
  results/timing-qs-qs_balanced-read-nycflights.qs \
  results/timing-qs-qs_balanced-read-small.qs \
  results/timing-qs-qs_balanced-read-tickets2018.qs \
  results/timing-qs-qs_balanced-read-tiny.qs \
  results/timing-qs-qs_balanced-read-wide.qs \
  results/timing-qs-qs_fast-write-large.qs \
  results/timing-qs-qs_fast-write-medium.qs \
  results/timing-qs-qs_fast-write-nycflights.qs \
  results/timing-qs-qs_fast-write-small.qs \
  results/timing-qs-qs_fast-write-tickets2018.qs \
  results/timing-qs-qs_fast-write-tiny.qs \
  results/timing-qs-qs_fast-write-wide.qs \
  results/timing-qs-qs_fast-read-large.qs \
  results/timing-qs-qs_fast-read-medium.qs \
  results/timing-qs-qs_fast-read-nycflights.qs \
  results/timing-qs-qs_fast-read-small.qs \
  results/timing-qs-qs_fast-read-tickets2018.qs \
  results/timing-qs-qs_fast-read-tiny.qs \
  results/timing-qs-qs_fast-read-wide.qs \
  results/timing-csv-readr-write-large.qs \
  results/timing-csv-readr-write-medium.qs \
  results/timing-csv-readr-write-nycflights.qs \
  results/timing-csv-readr-write-small.qs \
  results/timing-csv-readr-write-tickets2018.qs \
  results/timing-csv-readr-write-tiny.qs \
  results/timing-csv-readr-write-wide.qs \
  results/timing-csv-readr-read-large.qs \
  results/timing-csv-readr-read-medium.qs \
  results/timing-csv-readr-read-nycflights.qs \
  results/timing-csv-readr-read-small.qs \
  results/timing-csv-readr-read-tickets2018.qs \
  results/timing-csv-readr-read-tiny.qs \
  results/timing-csv-readr-read-wide.qs \
  results/timing-rds-readr-write-large.qs \
  results/timing-rds-readr-write-medium.qs \
  results/timing-rds-readr-write-nycflights.qs \
  results/timing-rds-readr-write-small.qs \
  results/timing-rds-readr-write-tickets2018.qs \
  results/timing-rds-readr-write-tiny.qs \
  results/timing-rds-readr-write-wide.qs \
  results/timing-rds-readr-read-large.qs \
  results/timing-rds-readr-read-medium.qs \
  results/timing-rds-readr-read-nycflights.qs \
  results/timing-rds-readr-read-small.qs \
  results/timing-rds-readr-read-tickets2018.qs \
  results/timing-rds-readr-read-tiny.qs \
  results/timing-rds-readr-read-wide.qs \
  results/timing-rds-readr_bz2-write-large.qs \
  results/timing-rds-readr_bz2-write-medium.qs \
  results/timing-rds-readr_bz2-write-nycflights.qs \
  results/timing-rds-readr_bz2-write-small.qs \
  results/timing-rds-readr_bz2-write-tickets2018.qs \
  results/timing-rds-readr_bz2-write-tiny.qs \
  results/timing-rds-readr_bz2-write-wide.qs \
  results/timing-rds-readr_bz2-read-large.qs \
  results/timing-rds-readr_bz2-read-medium.qs \
  results/timing-rds-readr_bz2-read-nycflights.qs \
  results/timing-rds-readr_bz2-read-small.qs \
  results/timing-rds-readr_bz2-read-tickets2018.qs \
  results/timing-rds-readr_bz2-read-tiny.qs \
  results/timing-rds-readr_bz2-read-wide.qs \
  results/timing-rds-readr_gz-write-large.qs \
  results/timing-rds-readr_gz-write-medium.qs \
  results/timing-rds-readr_gz-write-nycflights.qs \
  results/timing-rds-readr_gz-write-small.qs \
  results/timing-rds-readr_gz-write-tickets2018.qs \
  results/timing-rds-readr_gz-write-tiny.qs \
  results/timing-rds-readr_gz-write-wide.qs \
  results/timing-rds-readr_gz-read-large.qs \
  results/timing-rds-readr_gz-read-medium.qs \
  results/timing-rds-readr_gz-read-nycflights.qs \
  results/timing-rds-readr_gz-read-small.qs \
  results/timing-rds-readr_gz-read-tickets2018.qs \
  results/timing-rds-readr_gz-read-tiny.qs \
  results/timing-rds-readr_gz-read-wide.qs \
  results/timing-rds-readr_xz-write-large.qs \
  results/timing-rds-readr_xz-write-medium.qs \
  results/timing-rds-readr_xz-write-nycflights.qs \
  results/timing-rds-readr_xz-write-small.qs \
  results/timing-rds-readr_xz-write-tickets2018.qs \
  results/timing-rds-readr_xz-write-tiny.qs \
  results/timing-rds-readr_xz-write-wide.qs \
  results/timing-rds-readr_xz-read-large.qs \
  results/timing-rds-readr_xz-read-medium.qs \
  results/timing-rds-readr_xz-read-nycflights.qs \
  results/timing-rds-readr_xz-read-small.qs \
  results/timing-rds-readr_xz-read-tickets2018.qs \
  results/timing-rds-readr_xz-read-tiny.qs \
  results/timing-rds-readr_xz-read-wide.qs \
  results/timing-csv-vroom-write-large.qs \
  results/timing-csv-vroom-write-medium.qs \
  results/timing-csv-vroom-write-nycflights.qs \
  results/timing-csv-vroom-write-small.qs \
  results/timing-csv-vroom-write-tickets2018.qs \
  results/timing-csv-vroom-write-tiny.qs \
  results/timing-csv-vroom-write-wide.qs \
  results/timing-csv-vroom-read-large.qs \
  results/timing-csv-vroom-read-medium.qs \
  results/timing-csv-vroom-read-nycflights.qs \
  results/timing-csv-vroom-read-small.qs \
  results/timing-csv-vroom-read-tickets2018.qs \
  results/timing-csv-vroom-read-tiny.qs \
  results/timing-csv-vroom-read-wide.qs

### Targets

.PHONY: all data clean

all: data benchmark

data: $(DATAFILES)
benchmark: $(RESULTFILES)

clean:
	-rm -f data/nycflights.qs data/wide.qs data/medium.qs data/tiny.qs data/small.qs data/large.qs
	-rm -f results/*.rds

# rules for the dataset files: for each datafile, check and create if needed.
$(foreach D, $(DATAFILES), $(eval $D: make_datasets.R ; @echo "  Data '$D' out of date running 'Rscript make_datasets.R'" && Rscript make_datasets.R))


### File Dependencies

results/timing-arrow-arrow-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data large

results/timing-arrow-arrow-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data medium

results/timing-arrow-arrow-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data nycflights

results/timing-arrow-arrow-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data small

results/timing-arrow-arrow-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data tickets2018

results/timing-arrow-arrow-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data tiny

results/timing-arrow-arrow-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data wide

results/timing-arrow-arrow-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data large --read

results/timing-arrow-arrow-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data medium --read

results/timing-arrow-arrow-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data nycflights --read

results/timing-arrow-arrow-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data small --read

results/timing-arrow-arrow-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data tickets2018 --read

results/timing-arrow-arrow-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data tiny --read

results/timing-arrow-arrow-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package arrow --filetype arrow --data wide --read

results/timing-feather-arrow-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data large

results/timing-feather-arrow-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data medium

results/timing-feather-arrow-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data nycflights

results/timing-feather-arrow-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data small

results/timing-feather-arrow-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data tickets2018

results/timing-feather-arrow-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data tiny

results/timing-feather-arrow-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data wide

results/timing-feather-arrow-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data large --read

results/timing-feather-arrow-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data medium --read

results/timing-feather-arrow-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data nycflights --read

results/timing-feather-arrow-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data small --read

results/timing-feather-arrow-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data tickets2018 --read

results/timing-feather-arrow-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data tiny --read

results/timing-feather-arrow-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package arrow --filetype feather --data wide --read

results/timing-parquet-arrow-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data large

results/timing-parquet-arrow-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data medium

results/timing-parquet-arrow-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data nycflights

results/timing-parquet-arrow-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data small

results/timing-parquet-arrow-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data tickets2018

results/timing-parquet-arrow-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data tiny

results/timing-parquet-arrow-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data wide

results/timing-parquet-arrow-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data large --read

results/timing-parquet-arrow-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data medium --read

results/timing-parquet-arrow-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data nycflights --read

results/timing-parquet-arrow-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data small --read

results/timing-parquet-arrow-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data tickets2018 --read

results/timing-parquet-arrow-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data tiny --read

results/timing-parquet-arrow-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package arrow --filetype parquet --data wide --read

results/timing-csv-base-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype csv --data large

results/timing-csv-base-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype csv --data medium

results/timing-csv-base-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype csv --data nycflights

results/timing-csv-base-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype csv --data small

results/timing-csv-base-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype csv --data tickets2018

results/timing-csv-base-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype csv --data tiny

results/timing-csv-base-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype csv --data wide

results/timing-csv-base-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype csv --data large --read

results/timing-csv-base-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype csv --data medium --read

results/timing-csv-base-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype csv --data nycflights --read

results/timing-csv-base-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype csv --data small --read

results/timing-csv-base-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype csv --data tickets2018 --read

results/timing-csv-base-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype csv --data tiny --read

results/timing-csv-base-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype csv --data wide --read

results/timing-rds-base-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large

results/timing-rds-base-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium

results/timing-rds-base-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights

results/timing-rds-base-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small

results/timing-rds-base-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018

results/timing-rds-base-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny

results/timing-rds-base-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide

results/timing-rds-base-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --read

results/timing-rds-base-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --read

results/timing-rds-base-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --read

results/timing-rds-base-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --read

results/timing-rds-base-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --read

results/timing-rds-base-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --read

results/timing-rds-base-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --read

results/timing-rds-base_bzip2-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --compression bzip2

results/timing-rds-base_bzip2-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --compression bzip2

results/timing-rds-base_bzip2-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --compression bzip2

results/timing-rds-base_bzip2-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --compression bzip2

results/timing-rds-base_bzip2-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --compression bzip2

results/timing-rds-base_bzip2-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --compression bzip2

results/timing-rds-base_bzip2-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --compression bzip2

results/timing-rds-base_bzip2-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --read --compression bzip2

results/timing-rds-base_bzip2-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --read --compression bzip2

results/timing-rds-base_bzip2-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --read --compression bzip2

results/timing-rds-base_bzip2-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --read --compression bzip2

results/timing-rds-base_bzip2-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --read --compression bzip2

results/timing-rds-base_bzip2-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --read --compression bzip2

results/timing-rds-base_bzip2-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --read --compression bzip2

results/timing-rds-base_gzip-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --compression gzip

results/timing-rds-base_gzip-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --compression gzip

results/timing-rds-base_gzip-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --compression gzip

results/timing-rds-base_gzip-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --compression gzip

results/timing-rds-base_gzip-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --compression gzip

results/timing-rds-base_gzip-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --compression gzip

results/timing-rds-base_gzip-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --compression gzip

results/timing-rds-base_gzip-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --read --compression gzip

results/timing-rds-base_gzip-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --read --compression gzip

results/timing-rds-base_gzip-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --read --compression gzip

results/timing-rds-base_gzip-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --read --compression gzip

results/timing-rds-base_gzip-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --read --compression gzip

results/timing-rds-base_gzip-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --read --compression gzip

results/timing-rds-base_gzip-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --read --compression gzip

results/timing-rds-base_xz-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --compression xz

results/timing-rds-base_xz-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --compression xz

results/timing-rds-base_xz-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --compression xz

results/timing-rds-base_xz-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --compression xz

results/timing-rds-base_xz-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --compression xz

results/timing-rds-base_xz-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --compression xz

results/timing-rds-base_xz-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --compression xz

results/timing-rds-base_xz-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package base --filetype rds --data large --read --compression xz

results/timing-rds-base_xz-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package base --filetype rds --data medium --read --compression xz

results/timing-rds-base_xz-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package base --filetype rds --data nycflights --read --compression xz

results/timing-rds-base_xz-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package base --filetype rds --data small --read --compression xz

results/timing-rds-base_xz-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tickets2018 --read --compression xz

results/timing-rds-base_xz-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package base --filetype rds --data tiny --read --compression xz

results/timing-rds-base_xz-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package base --filetype rds --data wide --read --compression xz

results/timing-csv-datatable-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data large

results/timing-csv-datatable-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data medium

results/timing-csv-datatable-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data nycflights

results/timing-csv-datatable-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data small

results/timing-csv-datatable-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data tickets2018

results/timing-csv-datatable-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data tiny

results/timing-csv-datatable-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data wide

results/timing-csv-datatable-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data large --read

results/timing-csv-datatable-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data medium --read

results/timing-csv-datatable-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data nycflights --read

results/timing-csv-datatable-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data small --read

results/timing-csv-datatable-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data tickets2018 --read

results/timing-csv-datatable-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data tiny --read

results/timing-csv-datatable-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package datatable --filetype csv --data wide --read

results/timing-feather-feather-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data large

results/timing-feather-feather-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data medium

results/timing-feather-feather-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data nycflights

results/timing-feather-feather-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data small

results/timing-feather-feather-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data tickets2018

results/timing-feather-feather-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data tiny

results/timing-feather-feather-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data wide

results/timing-feather-feather-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data large --read

results/timing-feather-feather-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data medium --read

results/timing-feather-feather-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data nycflights --read

results/timing-feather-feather-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data small --read

results/timing-feather-feather-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data tickets2018 --read

results/timing-feather-feather-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data tiny --read

results/timing-feather-feather-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package feather --filetype feather --data wide --read

results/timing-fst-fst-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data large

results/timing-fst-fst-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data medium

results/timing-fst-fst-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data nycflights

results/timing-fst-fst-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data small

results/timing-fst-fst-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tickets2018

results/timing-fst-fst-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tiny

results/timing-fst-fst-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data wide

results/timing-fst-fst-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data large --read

results/timing-fst-fst-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data medium --read

results/timing-fst-fst-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data nycflights --read

results/timing-fst-fst-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data small --read

results/timing-fst-fst-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tickets2018 --read

results/timing-fst-fst-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tiny --read

results/timing-fst-fst-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data wide --read

results/timing-fst-fst_0-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data large --compression 0

results/timing-fst-fst_0-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data medium --compression 0

results/timing-fst-fst_0-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data nycflights --compression 0

results/timing-fst-fst_0-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data small --compression 0

results/timing-fst-fst_0-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tickets2018 --compression 0

results/timing-fst-fst_0-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tiny --compression 0

results/timing-fst-fst_0-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data wide --compression 0

results/timing-fst-fst_0-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data large --read --compression 0

results/timing-fst-fst_0-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data medium --read --compression 0

results/timing-fst-fst_0-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data nycflights --read --compression 0

results/timing-fst-fst_0-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data small --read --compression 0

results/timing-fst-fst_0-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tickets2018 --read --compression 0

results/timing-fst-fst_0-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tiny --read --compression 0

results/timing-fst-fst_0-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data wide --read --compression 0

results/timing-fst-fst_100-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data large --compression 100

results/timing-fst-fst_100-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data medium --compression 100

results/timing-fst-fst_100-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data nycflights --compression 100

results/timing-fst-fst_100-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data small --compression 100

results/timing-fst-fst_100-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tickets2018 --compression 100

results/timing-fst-fst_100-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tiny --compression 100

results/timing-fst-fst_100-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data wide --compression 100

results/timing-fst-fst_100-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data large --read --compression 100

results/timing-fst-fst_100-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data medium --read --compression 100

results/timing-fst-fst_100-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data nycflights --read --compression 100

results/timing-fst-fst_100-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data small --read --compression 100

results/timing-fst-fst_100-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tickets2018 --read --compression 100

results/timing-fst-fst_100-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data tiny --read --compression 100

results/timing-fst-fst_100-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package fst --filetype fst --data wide --read --compression 100

results/timing-qs-qs-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large

results/timing-qs-qs-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium

results/timing-qs-qs-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights

results/timing-qs-qs-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small

results/timing-qs-qs-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018

results/timing-qs-qs-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny

results/timing-qs-qs-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide

results/timing-qs-qs-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --read

results/timing-qs-qs-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --read

results/timing-qs-qs-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --read

results/timing-qs-qs-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --read

results/timing-qs-qs-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --read

results/timing-qs-qs-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --read

results/timing-qs-qs-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --read

results/timing-qs-qs_archive-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --compression archive

results/timing-qs-qs_archive-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --compression archive

results/timing-qs-qs_archive-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --compression archive

results/timing-qs-qs_archive-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --compression archive

results/timing-qs-qs_archive-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --compression archive

results/timing-qs-qs_archive-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --compression archive

results/timing-qs-qs_archive-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --compression archive

results/timing-qs-qs_archive-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --read --compression archive

results/timing-qs-qs_archive-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --read --compression archive

results/timing-qs-qs_archive-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --read --compression archive

results/timing-qs-qs_archive-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --read --compression archive

results/timing-qs-qs_archive-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --read --compression archive

results/timing-qs-qs_archive-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --read --compression archive

results/timing-qs-qs_archive-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --read --compression archive

results/timing-qs-qs_balanced-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --compression balanced

results/timing-qs-qs_balanced-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --compression balanced

results/timing-qs-qs_balanced-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --compression balanced

results/timing-qs-qs_balanced-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --compression balanced

results/timing-qs-qs_balanced-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --compression balanced

results/timing-qs-qs_balanced-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --compression balanced

results/timing-qs-qs_balanced-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --compression balanced

results/timing-qs-qs_balanced-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --read --compression balanced

results/timing-qs-qs_balanced-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --read --compression balanced

results/timing-qs-qs_balanced-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --read --compression balanced

results/timing-qs-qs_balanced-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --read --compression balanced

results/timing-qs-qs_balanced-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --read --compression balanced

results/timing-qs-qs_balanced-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --read --compression balanced

results/timing-qs-qs_balanced-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --read --compression balanced

results/timing-qs-qs_fast-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --compression fast

results/timing-qs-qs_fast-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --compression fast

results/timing-qs-qs_fast-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --compression fast

results/timing-qs-qs_fast-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --compression fast

results/timing-qs-qs_fast-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --compression fast

results/timing-qs-qs_fast-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --compression fast

results/timing-qs-qs_fast-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --compression fast

results/timing-qs-qs_fast-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data large --read --compression fast

results/timing-qs-qs_fast-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data medium --read --compression fast

results/timing-qs-qs_fast-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data nycflights --read --compression fast

results/timing-qs-qs_fast-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data small --read --compression fast

results/timing-qs-qs_fast-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tickets2018 --read --compression fast

results/timing-qs-qs_fast-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data tiny --read --compression fast

results/timing-qs-qs_fast-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package qs --filetype qs --data wide --read --compression fast

results/timing-csv-readr-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data large

results/timing-csv-readr-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data medium

results/timing-csv-readr-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data nycflights

results/timing-csv-readr-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data small

results/timing-csv-readr-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data tickets2018

results/timing-csv-readr-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data tiny

results/timing-csv-readr-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data wide

results/timing-csv-readr-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data large --read

results/timing-csv-readr-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data medium --read

results/timing-csv-readr-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data nycflights --read

results/timing-csv-readr-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data small --read

results/timing-csv-readr-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data tickets2018 --read

results/timing-csv-readr-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data tiny --read

results/timing-csv-readr-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype csv --data wide --read

results/timing-rds-readr-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large

results/timing-rds-readr-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium

results/timing-rds-readr-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights

results/timing-rds-readr-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small

results/timing-rds-readr-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018

results/timing-rds-readr-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny

results/timing-rds-readr-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide

results/timing-rds-readr-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --read

results/timing-rds-readr-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --read

results/timing-rds-readr-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --read

results/timing-rds-readr-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --read

results/timing-rds-readr-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --read

results/timing-rds-readr-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --read

results/timing-rds-readr-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --read

results/timing-rds-readr_bz2-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --compression bz2

results/timing-rds-readr_bz2-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --compression bz2

results/timing-rds-readr_bz2-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --compression bz2

results/timing-rds-readr_bz2-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --compression bz2

results/timing-rds-readr_bz2-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --compression bz2

results/timing-rds-readr_bz2-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --compression bz2

results/timing-rds-readr_bz2-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --compression bz2

results/timing-rds-readr_bz2-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --read --compression bz2

results/timing-rds-readr_bz2-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --read --compression bz2

results/timing-rds-readr_bz2-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --read --compression bz2

results/timing-rds-readr_bz2-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --read --compression bz2

results/timing-rds-readr_bz2-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --read --compression bz2

results/timing-rds-readr_bz2-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --read --compression bz2

results/timing-rds-readr_bz2-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --read --compression bz2

results/timing-rds-readr_gz-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --compression gz

results/timing-rds-readr_gz-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --compression gz

results/timing-rds-readr_gz-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --compression gz

results/timing-rds-readr_gz-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --compression gz

results/timing-rds-readr_gz-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --compression gz

results/timing-rds-readr_gz-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --compression gz

results/timing-rds-readr_gz-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --compression gz

results/timing-rds-readr_gz-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --read --compression gz

results/timing-rds-readr_gz-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --read --compression gz

results/timing-rds-readr_gz-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --read --compression gz

results/timing-rds-readr_gz-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --read --compression gz

results/timing-rds-readr_gz-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --read --compression gz

results/timing-rds-readr_gz-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --read --compression gz

results/timing-rds-readr_gz-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --read --compression gz

results/timing-rds-readr_xz-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --compression xz

results/timing-rds-readr_xz-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --compression xz

results/timing-rds-readr_xz-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --compression xz

results/timing-rds-readr_xz-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --compression xz

results/timing-rds-readr_xz-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --compression xz

results/timing-rds-readr_xz-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --compression xz

results/timing-rds-readr_xz-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --compression xz

results/timing-rds-readr_xz-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data large --read --compression xz

results/timing-rds-readr_xz-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data medium --read --compression xz

results/timing-rds-readr_xz-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data nycflights --read --compression xz

results/timing-rds-readr_xz-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data small --read --compression xz

results/timing-rds-readr_xz-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tickets2018 --read --compression xz

results/timing-rds-readr_xz-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data tiny --read --compression xz

results/timing-rds-readr_xz-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package readr --filetype rds --data wide --read --compression xz

results/timing-csv-vroom-write-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data large

results/timing-csv-vroom-write-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data medium

results/timing-csv-vroom-write-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data nycflights

results/timing-csv-vroom-write-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data small

results/timing-csv-vroom-write-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data tickets2018

results/timing-csv-vroom-write-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data tiny

results/timing-csv-vroom-write-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data wide

results/timing-csv-vroom-read-large.qs : run_benchmark.R helpers.R data/large.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data large --read

results/timing-csv-vroom-read-medium.qs : run_benchmark.R helpers.R data/medium.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data medium --read

results/timing-csv-vroom-read-nycflights.qs : run_benchmark.R helpers.R data/nycflights.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data nycflights --read

results/timing-csv-vroom-read-small.qs : run_benchmark.R helpers.R data/small.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data small --read

results/timing-csv-vroom-read-tickets2018.qs : run_benchmark.R helpers.R data/tickets2018.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data tickets2018 --read

results/timing-csv-vroom-read-tiny.qs : run_benchmark.R helpers.R data/tiny.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data tiny --read

results/timing-csv-vroom-read-wide.qs : run_benchmark.R helpers.R data/wide.qs
	-Rscript run_benchmark.R --package vroom --filetype csv --data wide --read
