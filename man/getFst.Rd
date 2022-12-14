% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_sumstats.R
\name{getFst}
\alias{getFst}
\title{Calculate FST}
\usage{
getFst(freq1, freq2, ss1, ss2)
}
\arguments{
\item{freq1}{is a numeric vector with the allele frequencies for population
\enumerate{
\item Each entry of the vector should be a different site.
}}

\item{freq2}{is a numeric vector with the allele frequencies for population
2. Each entry of the vector should be a different site.}

\item{ss1}{vector with the sample size for population 1. Each entry of the
vector should contain the number of reads for a different site.}

\item{ss2}{vector with the sample size for population 2. Each entry of the
vector should contain the number of reads for a different site.}
}
\value{
a numeric value which is the FST between the two populations.
}
\description{
This function computes FST according to Hudson's estimator following Bathia.
Note that the frequencies for the two populations should be entered as
separate inputs.
}
\details{
Note that this functions computes a single FST value between two populations
and does not perform pairwise comparisons of multiple populations.
}
\keyword{internal}
