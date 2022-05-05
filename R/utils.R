#' Adapted from https://github.com/rfortherestofus/pagedreport/blob/main/R/utils.R
pkg_resource <- function(...) {
  system.file("resources", ..., package = "isprspaged", mustWork = TRUE)
}
