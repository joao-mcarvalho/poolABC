% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_import.R
\name{checkMajor}
\alias{checkMajor}
\title{Check if the major allele is the same in all populations}
\usage{
checkMajor(nPops, major, minor, rMajor, rMinor)
}
\arguments{
\item{nPops}{is an integer indicating the total number of different
populations in the dataset.}

\item{major}{is a matrix with the reference character of the major allele.
Each column of the matrix should be a different population and each row a
different SNP.}

\item{minor}{is a matrix with the reference character of the minor allele.
Each column of the matrix should be a different population and each row a
different SNP.}

\item{rMajor}{is a matrix with the number of major allele reads. Each column
of the matrix should be a different population and each row a different
SNP.}

\item{rMinor}{is a matrix with the number of minor allele reads. Each column
of the matrix should be a different population and each row a different
SNP.}
}
\value{
a list with four named entries:

\item{major}{a matrix with the reference character of the major allele.
Each column of this matrix corresponds to a different population and each
row to a different site.}

\item{minor}{a matrix with the reference character of the minor allele.
Each column of this matrix corresponds to a different population and each
row to a different site.}

\item{rMajor}{a matrix with the number of major-allele reads. Each row of
this matrix is a different site and each column a different population.}

\item{rMinor}{a matrix with the number of minor-allele reads. Each row of
this matrix is a different site and each column a different population.}

Each of those matrices is similar to the corresponding input but with the
major and minor allele switched when appropriate.
}
\description{
Checks if the reference character of the major allele is the same in all
populations present in the dataset.
}
\details{
When working with two populations, the reference character of the major
allele is compared between the two populations. If they are not the same,
this function switches the major and minor reference character of the second
population i.e. the original reference character of the major allele of the
second population is now the reference character of the minor allele of the
second population. It also switches the number of reads so that the number of
major-allele reads is now the number of minor-allele reads and vice-versa.
When working with four populations, and if the major reference character is
not the same at all populations, this function checks if any of the reference
characters appears in three populations. If it does, then the major and minor
reference character and reads are switched in the remaining population. If
not, then the reference character and reads of two random populations are
switched.

Finally, for both datasets with two or four populations, this function checks
if the total number of major-allele reads, across all populations and after
the switch, is larger than the total number of minor-allele reads. If this is
not true, then we switch the major and minor allele so that the more frequent
one corresponds to the major allele.
}
\keyword{internal}
