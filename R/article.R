#' Function for article template
#' @param other_css Add an other CSS
#' @param ... Arguments passed to pagedown::html_paged
#' @return a pagedown template
#' @export
#'

article <- function(other_css = NULL,
                    ...) {
  # arguments
  main_css <-
    pkg_resource("css/style_isprs.css")
  pandoc_html <-
    pkg_resource("html/template_paged.html")

  # template
  pagedown::html_paged(
    css = c(other_css, main_css),
    template = pandoc_html,
    toc = FALSE,
    ...
  )
}


