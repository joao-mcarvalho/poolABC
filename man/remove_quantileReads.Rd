% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_import.R
\name{remove_quantileReads}
\alias{remove_quantileReads}
\title{Remove sites using quantiles of the depth of coverage}
\usage{
remove_quantileReads(nPops, data)
}
\arguments{
\item{nPops}{is an integer representing the total number of populations in
the dataset.}

\item{data}{is a dataset containing information about real populations. This
dataset should have lists with the allelic frequencies, the position of the
SNPs, the range of the contig, the number of major allele reads, the number
of minor allele reads and the depth of coverage.}
}
\value{
a list with the following elements:

\item{freqs}{a list with the allele frequencies, computed by dividing the
number of minor-allele reads by the total coverage. Each entry of this list
corresponds to a different contig. Each entry is a matrix where each row is
a different site and each column is a different population.}

\item{positions}{a list with the positions of each SNP. Each entry of this
list is a vector corresponding to a different contig.}

\item{range}{a list with the minimum and maximum SNP position of each
contig. Each entry of this list is a vector corresponding to a different
contig.}

\item{rMajor}{a list with the number of major-allele reads. Each entry of
this list corresponds to a different contig. Each entry is a matrix where
each row is a different site and each column is a different population.}

\item{rMinor}{a list with the number of minor-allele reads. Each entry of
this list corresponds to a different contig. Each entry is a matrix where
each row is a different site and each column is a different population.}

\item{coverage}{a list with the total coverage. Each entry of this list
corresponds to a different contig. Each entry is a matrix where each row is
a different site and each column is a different population.}

This output is identical to the \code{data} input, the only difference being the
removal of sites with too many or too few reads.
}
\description{
Removes sites that have too many or too few reads from the dataset.
}
\details{
The 25\% and the 75\% quantiles of the coverage distribution is computed for
each population in the dataset. Then, the lowest 25\% quantile across all
populations is considered the minimum depth of coverage allowed. Similarly,
the highest 75\% quantile across all populations is considered the maximum
depth of coverage allowed. The coverage of each population at each site is
compared with those threshold values and any site, where the coverage of at
least one population is below or above that threshold, is completely removed
from the dataset.
}
\examples{
# load the data from one rc file
data(rc1)

# clean and organize the data in this single file
mydata <- cleanData(file = rc1, pops = 7:10)

# organize the information by contigs
mydata <- prepareFile(data = mydata, nPops = 4)

# remove sites according to the coverage quantile
remove_quantileReads(nPops = 4, data = mydata)

}
