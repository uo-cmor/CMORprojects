% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_project_directory.R
\name{use_project_directory}
\alias{use_project_directory}
\title{Create the directory structure for a CMOR research project}
\usage{
use_project_directory(
  git = TRUE,
  raw_data_in_git = TRUE,
  data_in_git = FALSE,
  output_in_git = FALSE
)
}
\arguments{
\item{git}{Logical (default = \code{TRUE}). Whether to create a git
repository.}

\item{raw_data_in_git}{Logical (default = \code{TRUE}). If FALSE, data in the
\verb{raw_data/} directory will be excluded from the git repository.}

\item{data_in_git}{Logical. If \code{FALSE} (the default), data in the
\verb{derived_data/} directory will be excluded from the git repository.}

\item{output_in_git}{Logical. If \code{FALSE} (the default), data in the
\verb{output/} directory will be excluded from the git repository.}
}
\description{
This function will create a directory structure to hold the data, code, and
outputs for a research project package, and various template files to
format output, etc.
}
