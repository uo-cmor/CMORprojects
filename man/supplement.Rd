% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/typst-tables.R
\name{supplement}
\alias{supplement}
\title{Mark a table or figure as supplementary material}
\usage{
supplement(x)
}
\arguments{
\item{x}{A \code{typst_table} or \code{typst_figure} object.}
}
\description{
Just specifies the Typst \code{kind} as \code{"suppl-table"}/\code{"suppl-image"} instead of
\code{"table"}/\code{"image"}. The Typst template used needs to do something with
this to have any effect.
}
