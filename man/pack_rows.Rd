% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{pack_rows}
\alias{pack_rows}
\title{Group table rows together}
\usage{
pack_rows(
  x,
  start_row,
  end_row,
  label = NULL,
  italic = TRUE,
  bold = FALSE,
  align = NULL,
  indent = TRUE
)
}
\arguments{
\item{x}{A \code{typst_table} object}

\item{start_row, end_row}{The first and last rows to be combined}

\item{label}{Label to add above \code{start_row}}

\item{italic, bold}{(optional) Formatting to apply to \code{label}. Defaults to
upright/bold.}

\item{align}{(optional) Cell alignment for the \code{label}. Defaults to the same
as the first column.}

\item{indent}{(optional) Whether to indent the grouped rows. Defaults to
\code{TRUE}.}
}
\description{
Based on the \code{kableExtra} function of the same name
}
