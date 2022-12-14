% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_simulations.R
\name{createParams}
\alias{createParams}
\title{Draw parameters from the priors}
\usage{
createParams(
  Nref,
  ratio,
  split,
  pool,
  seq,
  CW,
  WC,
  CC = NA,
  WW = NA,
  ANC = NA,
  bT,
  bCW = NA,
  bWC = NA,
  model,
  digits = 5
)
}
\arguments{
\item{Nref}{The minimum and maximum value of the uniform distribution for the
effective population size of the reference population (Nref).}

\item{ratio}{The minimum and maximum value of the distribution from which the
relative size of the present-day and ancestral populations are drawn. The
size of these populations is set as a ratio of the size of the Nref
population. All of these ratios are drawn from a log10 uniform
distribution.}

\item{split}{The minimum and maximum values, at the 4Nref scale, of the
uniform distribution from which the values of the times of the split events
are draw. Both the time of the recent split event and the distance between
the two split events are drawn from this distribution.}

\item{pool}{The minimum and maximum values of the uniform distribution from
which the value of the error associated with DNA pooling is drawn. More
specifically, this value is related with the unequal individual
contribution to the pool.}

\item{seq}{The minimum and maximum values of the uniform distribution from
which the value of the error associated with DNA sequencing is drawn. This
parameter should be supplied as a decimal number between zero and one.}

\item{CW}{The minimum and maximum value of the uniform distribution from
which the migration rate between the two divergent ecotypes inhabiting the
same location is drawn. We consider that this parameter is drawn on a m
scale. This is the migration rate from ecotype C to ecotype W.}

\item{WC}{The minimum and maximum value of the uniform distribution from
which the migration rate between the two divergent ecotypes inhabiting the
same location is drawn. We consider that this parameter is drawn on a m
scale. This is the migration rate from ecotype W to ecotype C.}

\item{CC}{The minimum and maximum value of the uniform distribution from
which the migration rate between similar ecotypes inhabiting different
locations is drawn. We consider that this parameter is drawn on a m scale.
This is the migration between the two C ecotypes at two different
locations.}

\item{WW}{The minimum and maximum value of the uniform distribution from
which the migration rate between similar ecotypes inhabiting different
locations is drawn. We consider that this parameter is drawn on a m scale.
This is the migration between the two W ecotypes at two different
locations.}

\item{ANC}{The minimum and maximum value of the uniform distribution from
which the migration rate between the two ancestral populations is drawn. We
consider that this parameter is drawn on a m scale.}

\item{bT}{The minimum and maximum values of the distribution from which the
proportion of the simulated loci where no migration occurs between
divergent ecotypes is drawn. The maximum value should not be higher than
one.}

\item{bCW}{The minimum and maximum values of the distribution from which the
proportion of the simulated loci where no migration occurs from the C
ecotype towards the W ecotype is drawn. The maximum value should not be
higher than one.}

\item{bWC}{The minimum and maximum values of the distribution from which the
proportion of the simulated loci where no migration occurs from the W
ecotype towards the C ecotype is drawn. The maximum value should not be
higher than one.}

\item{model}{Either "2pops", "Single" or "Parallel" indicating for which
model should parameters be drawn.}

\item{digits}{An optional integer indicating the number of decimal places to
use when rounding certain parameters. The default is five.}
}
\value{
a vector with one named entry per relevant parameter. Each entry is
the sampled value from the prior for that particular parameter.
}
\description{
This function creates a named vector of parameters that can be used as input
in the command line of the scrm package. Please note that this function needs
to be adjusted if you wish to test the effect of different prior
distributions.
}
\examples{
# for a model with two populations
createParams(Nref = c(25000, 25000), ratio = c(0.1, 3), pool = c(5, 250), seq = c(0.0001, 0.001),
split = c(0, 3), CW = c(1e-13, 1e-3), WC = c(1e-13, 1e-3), bT = c(0, 0.2), model = "2pops")

# for a single origin scenario
createParams(Nref = c(25000, 25000), ratio = c(0.1, 3), pool = c(5, 250), seq = c(0.0001, 0.001),
split = c(0, 3), CW = c(1e-13, 1e-3), WC = c(1e-13, 1e-3), CC =  c(1e-13, 1e-3),
WW = c(1e-13, 1e-3), ANC = c(1e-13, 1e-3), bT = c(0, 0.2), bCW = c(0, 0.5),
bWC = c(0, 0.5), model = "Single")

}
