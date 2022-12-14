% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_ABC.R
\name{priorsMatrix}
\alias{priorsMatrix}
\title{Construct matrix of prior limits}
\usage{
priorsMatrix(model, inputParams)
}
\arguments{
\item{model}{a character, either 2pops", "Single" or "Parallel" indicating
which model was simulated.}

\item{inputParams}{A vector containing the minimum and maximum values of the
prior distribution for each parameter in the model. The input of the
\code{CreateParameters} function can be converted into a vector and used
here.}
}
\value{
a matrix where each row is a different parameter. Note also that each
row is named after the corresponding parameter. For each row, the first
column contains the minimum value of that parameter and the second column
contains the maximum value.
}
\description{
Takes as input the minimum and maximum values of the prior distribution for
all relevant parameters and constructs a matrix of prior limits.
}
\details{
The output matrix contains all parameters of a given model and, for each
parameter, it contains the minimum and maximum value of the prior.
}
\examples{
# create a vector of input parameters for a model with two populations
inputs <- c(Nref = c(25000, 25000), ratio = c(0.1, 3), pool = c(5, 250), seq = c(0.0001, 0.001),
split = c(0, 3), CW = c(1e-13, 1e-3), WC = c(1e-13, 1e-3), bT = c(0, 0.2))

# construct a matrix with the limits of the prior distribution
priorsMatrix(model = "2pops", inputParams = inputs)

}
