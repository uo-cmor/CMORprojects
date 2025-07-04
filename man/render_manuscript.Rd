% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/render_manuscript.R
\name{render_manuscript}
\alias{render_manuscript}
\title{Render Typst manuscript to PDF}
\usage{
render_manuscript(
  path,
  deps,
  fig,
  tbl,
  template = "reports/_templates/article.typ",
  bibliography = "reports/references.yaml"
)
}
\arguments{
\item{path}{Path to Typst source file}

\item{deps}{List of dependencies (targets from the plan)}

\item{fig, tbl}{Lists of figures and tables referenced in the manuscript}

\item{template}{Typst template}

\item{bibliography}{Bibliography file}
}
\description{
Render a Typst source file to PDF, and return file path dependencies for
\code{targets} pipeline
}
