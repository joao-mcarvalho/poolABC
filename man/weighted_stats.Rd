% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_ABC.R
\name{weighted_stats}
\alias{weighted_stats}
\title{Compute weighted point estimates}
\usage{
weighted_stats(x, w, prob = c(0.05, 0.25, 0.75, 0.95))
}
\arguments{
\item{x}{numeric vector of size n with the observations.}

\item{w}{numeric vector of size n with non-negative weights. Note that this
vector needs to have the same length as the \code{x} vector.}

\item{prob}{numeric vector of probabilities with values in \code{[0,1]}.}
}
\value{
numeric vector with weighted mean, median and quantiles of size
\code{2 + length(prob)}.
}
\description{
Computes the weighted mean, median and quantiles of a distribution.
}
\details{
This function requires the \code{\link[MetricsWeighted:weighted_quantile]{MetricsWeighted::weighted_quantile()}} function
and the weights to compute the weighted arithmetic mean and the weighted
quantiles. By default, this function computes the 5\%, 25\%, 50\% (corresponding
to the median), 75\% and 95\% quantiles.
}
\keyword{internal}
