% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diversity_beta_test.R
\name{diversity_beta_test}
\alias{diversity_beta_test}
\title{Beta diversity test (by default we use bray-curtis distance)}
\usage{
diversity_beta_test(MAE, tax_level, input_select_beta_condition,
  input_select_beta_stat_method, input_num_permutation_permanova = 999)
}
\arguments{
\item{MAE}{A multi-assay experiment object}

\item{tax_level}{The taxon level used for organisms}

\item{input_select_beta_condition}{Which condition to group samples}

\item{input_select_beta_stat_method}{"PERMANOVA", "Kruskal-Wallis", "Mann-Whitney"}

\item{input_num_permutation_permanova}{number of permutations}
}
\value{
A plotly object
}
\description{
Beta diversity test (by default we use bray-curtis distance)
}
\examples{
toy_data <- readRDS("data/MAE.rds")
p <- diversity_beta_test(toy_data,
                         tax_level = "genus",
                         input_select_beta_condition = "DISEASE",
                         input_select_beta_stat_method = "PERMANOVA",
                         input_num_permutation_permanova = 999)
p

}
