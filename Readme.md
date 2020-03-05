# Readme

This repository compares different read and write performances of `R` packages.

The talk was given by me, David, on March 05, 2020 to the [R User Group Cologne](https://www.meetup.com/KoelnRUG/events/267931738/).

The packages that I compared are `base`, `readr`, `data.table`, `vroom`, `fst`, `qs`, `feather`, `arrow`.

I compare read/write times, RAM usage, as well as the resulting filesize.

## Replication

In order to replicate the benchmarks:

1. run `Rscript create_makefile.R` which creates the `Makefile`
2. run `make`

To alter the benchmarks, change the `function_map` dataset in `create_makefile.R`

## Structure of the Project

- `create_makefile.R` takes the specifications and creates a `Makefile` to recreate the benchmarks
- `make_datasets.R` (called by `make`) creates the datasets and saves them to `data/`
- `run_benchmark.R` (called by `make`) takes specifications as CLI arguments and runs a test specification
- `test-nested-df.R` (NOT called by `make`) tests if a library supports nested data-frame
- `helpers.R` contains helper functions used by the other files.
- `faster-talk.Rmd/html` contains the talk and its source

If you find any errors, or have a comment, please feel free to open an issue or get in contact with me.


