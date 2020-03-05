suppressPackageStartupMessages(library(tidyverse))

#' Creates an artificial dataset
#'
#' @param nrows number of rows
#' @param ncols number of columns
#' @param type type of the values 
#'
#' @return a data.frame
create_dataset <- function(nrows, ncols, type = c("numeric", "character", "mixed"), perc_numeric = 0.5) {
  type <- match.arg(type)

  fake_numeric <- function(nrows, ncols) {
    if (ncols < 1) return(NULL)
    as_tibble(matrix(rnorm(nrows * ncols), nrow = nrows, ncol = ncols), .name_repair = "minimal") %>% 
      set_names(paste0("var_num_", 1:ncols))
  }
  
  fake_character <- function(nrows, ncols) {
    if (ncols < 1) return(NULL)
    as_tibble(matrix(stringi::stri_rand_strings(nrows * ncols, length = 15), nrow = nrows, ncol = ncols), .name_repair = "minimal") %>% 
      set_names(paste0("var_str_", 1:ncols))
  }
  
  if (type == "numeric") {
    res <- fake_numeric(nrows, ncols)
  } else if (type == "character") {
    res <- fake_character(nrows, ncols)
  } else { # mixed
    n_num <- round(perc_numeric * ncols)
    n_str <- ncols - n_num
    
    df_num <- fake_numeric(nrows, n_num)
    df_str <- fake_character(nrows, n_str)
    
    res <- cbind(df_num, df_str)
  }
  res
}

##############################################################################################################################

## Dataset creation

set.seed(202001001)
qs::qsave(create_dataset(10, 10, "numeric"), "data/tiny.qs", preset="archive")
qs::qsave(create_dataset(1000, 20, "numeric"), "data/small.qs", preset="archive")
qs::qsave(create_dataset(100, 1000, "numeric"), "data/wide.qs", preset="archive")
qs::qsave(create_dataset(100000, 50, "numeric"), "data/medium.qs", preset="archive")
qs::qsave(create_dataset(1000000, 50, "numeric"), "data/large.qs", preset="archive")
qs::qsave(nycflights13::flights, "data/nycflights.qs", preset="archive")

# Download ticket data from: https://data.cityofnewyork.us/City-Government/Parking-Violations-Issued-Fiscal-Year-2018/a5td-mswe
ticket_file <- "data/tickets2018.qs"
if (!file.exists(ticket_file)) {
  csv_file <- gsub("\\.qs", ".csv", ticket_file)
  download.file("https://data.cityofnewyork.us/api/views/a5td-mswe/rows.csv?accessType=DOWNLOAD", csv_file)
  ticket <- data.table::fread(csv_file)
  qs::qsave(ticket, ticket_file, preset = "archive")
  unlink(csv_file)
}
