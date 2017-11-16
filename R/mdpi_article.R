#' Multidisciplinary Digital Publishing Institute (MDPI) Journal format.
#'
#' This format was adapted from Entropy format, but it
#' should be fairly consistent across ASA journals
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#' @examples
#' \dontrun{
#' rmarkdown::draft("MyArticle.Rmd", template = "mdpi_article", package = "rticles")
#' }
#'
#' @export
mdpi_article <- function(..., keep_tex = TRUE, citation_package = 'natbib'){
  template <- find_resource("mdpi_article", "template.tex")
  fmt <- inherit_pdf_document(template = template,
                              keep_tex = keep_tex,
                              citation_package = citation_package,
                              ...)
}
