% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/save_plot.R
\name{save_plot}
\alias{save_plot}
\title{Save plot to SVG (and optionally PDF) file}
\usage{
save_plot(
  plot,
  filename,
  device = NULL,
  device.pdf = NULL,
  ...,
  pdf = TRUE,
  family = "Wickliffe Sans"
)
}
\arguments{
\item{plot}{Plot to save}

\item{filename}{File name to create on disk}

\item{device}{(optional) Device to use for SVG output}

\item{device.pdf}{(optional) Device to use for PDF output}

\item{...}{Passed through to \code{ggplot2::ggsave()}}

\item{pdf}{Whether to produce PDF output as well as SVG for inclusion in a
Typst source document.}
}
\description{
A wrapper around \code{ggplot2::ggsave()} to save plots to SVG file for inclusion
in Typst source documents.
}
\details{
Returns the path to the produced SVG file, for use in
\code{tarchetypes::tar_file()}.
}
