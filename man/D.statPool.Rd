% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_sumstats.R
\name{D.statPool}
\alias{D.statPool}
\title{Perform D-statistics analysis}
\usage{
D.statPool(pop_pi)
}
\arguments{
\item{pop_pi}{is a matrix of allele frequencies. Each row of that matrix
should correspond to a different population and each column to a different
SNP.}
}
\value{
a numeric vector with the three D-statistics values. Each
confirmation of the populations corresponds to a different entry of the
vector.
}
\description{
This functions calculates 3 different D-statistic values from pooled
sequenced data, using the allelic frequencies of the minor allele.
}
\details{
The three different combinations computed here are: D-statistic 1 sets the
the W ecotype in the first location (N2) as P1, the W ecotype in the second
location (N4) as P2 and the C ecotype at the first location (N1) as P3.
D-statistic 2 sets the W ecotype in the first location (N2) as P1, the C
ecotype in the second location (N3) as P2 and the C ecotype at the first
location (N1) as P3. D-statistic 3 sets the W ecotype at the first location
(N2) a P1, the C ecotype at the first location (N1) as P2 and the W ecotype
at the second location (N4) as P3.
}
\keyword{internal}
