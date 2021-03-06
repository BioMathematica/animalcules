% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_taxonomy.R
\name{find_taxonomy}
\alias{find_taxonomy}
\title{Find the taxonomy for unlimited tids}
\usage{
find_taxonomy(tids)
}
\arguments{
\item{tids}{Given taxonomy ids}
}
\value{
taxondata Data with the taxonomy information
}
\description{
Find the taxonomy for unlimited tids
}
\examples{
example_data_dir <- system.file("example/data", package = "PathoStat")
pathoreport_file_suffix <- "-sam-report.tsv"
datlist <- readPathoscopeData(example_data_dir, pathoreport_file_suffix,
input.files.name.vec = as.character(1:6))
dat <- datlist$data
ids <- rownames(dat)
tids <- unlist(lapply(ids, FUN = grepTid))
taxonLevels <- find_taxonomy(tids[1:5])
}
