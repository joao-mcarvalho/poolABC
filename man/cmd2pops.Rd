% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_simulations.R
\name{cmd2pops}
\alias{cmd2pops}
\title{Create SCRM command line for a model with two populations}
\usage{
cmd2pops(parameters, nSites, nLoci, nDip, mutrate, extra = FALSE)
}
\arguments{
\item{parameters}{A vector where each entry corresponds to a different
parameter, e.g. one entry is the size of the reference population, another
is the time of recent split, etc. Please note that this functions depends
on the ordering of the parameters in the vector and thus, it should only be
used with a vector created with the \code{createParams} function.}

\item{nSites}{An integer representing the number of base pairs that each
locus should have.}

\item{nLoci}{An integer that represents how many independent loci should be
simulated.}

\item{nDip}{An integer representing the total number of diploid individuals
to simulate. Note that scrm actually simulates haplotypes, so the number of
simulated haplotypes is double of this. Also note that this is the total
number of diploid individuals and this function will distribute the
individuals equally by the two populations.}

\item{mutrate}{A number representing the mutation rate assumed for the
simulations.}

\item{extra}{is a logical value indicating whether the required number of
loci should be enforced. The default is FALSE but, if set to TRUE, then
additional loci will be simulated. These additional loci are simulated to
try to have sufficient loci to keep the required number of loci after
filtering.}
}
\value{
a character vector with two entries. The first entry is the scrm
command line for the loci without any barriers against migration, while the
second entry is the scrm command line for the loci without migration
between divergent ecotypes.
}
\description{
This function creates a command line tailored for an isolation with migration
model with two populations. The command line can then be fed to the scrm
package to run the model.
}
\examples{
# create a vector with parameter values for a two populations model
params <- createParams(Nref = c(25000, 25000), ratio = c(0.1, 3), pool = c(5, 250),
seq = c(0.0001, 0.001), split = c(0, 3), CW = c(1e-13, 1e-3), WC = c(1e-13, 1e-3),
bT = c(0, 0.2), model = "2pops")

# create the command line for the scrm package
cmd2pops(parameters = params, nSites = 2000, nLoci = 100, nDip = 100, mutrate = 2e-8)

}
