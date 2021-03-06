% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{upsample_counts}
\alias{upsample_counts}
\title{Upsample a counts table to a higher taxon level}
\usage{
upsample_counts(counts_table, tax_table, higher_level)
}
\arguments{
\item{counts_table}{A organism x sample data frame of counts}

\item{tax_table}{A organism x taxlev data frame of labels}

\item{higher_level}{Higher taxon level to upsample to}
}
\value{
A organism x sample data frame of counts aggregated by a higher taxon level
}
\description{
Upsample a counts table to a higher taxon level
}
\examples{
toy_data <- readRDS("data/MAE.rds")
microbe <- toy_data[['MicrobeGenetics']] #double bracket subsetting is easier
counts_table <- as.data.frame(assays(microbe))[,rownames(sam_table)] # organism x sample
tax_table <- as.data.frame(rowData(microbe)) # organism x taxlev
counts <- upsample_counts(counts_table, tax_table, "phylum")

}
