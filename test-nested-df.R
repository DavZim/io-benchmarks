library(tidyverse)
library(glue)
source("helpers.R")

df <- tibble(x = 1:3,
             y = list(tibble(z = 1:10), tibble(z = 3:7), tibble(z = 101:132)))


for (i in seq_len(length(function_map))) {
  spec <- function_map[[i]]
  file <- tempfile()
  a <- try(spec[["write_function"]](df, file), silent = TRUE)
  
  pkg_txt <- glue("(Package {names(function_map)[i]})")
  cat(sprintf("Support for nested data-frame %30s:", pkg_txt))
  if (inherits(a, "try-error")) {
    cat(" write: FALSE read: FALSE")
  } else {
    cat(" write: TRUE  ")
    
    a <- try(spec[["read_function"]](file), silent = TRUE)
    if (inherits(a, "try-error")) {
      cat("read: FALSE")
    } else {
      if (class(a$y) == "list") {
        cat("read: TRUE")
      } else {
        cat("read: FALSE")
      }
    }
  }
  cat("\n")
}
