
# poolABC

<!-- badges: start -->

[![](https://zenodo.org/badge/DOI/10.5281/zenodo.7520303.svg)](https://doi.org/10.5281/zenodo.7520303)

<!-- badges: end -->

The goal of `poolABC` is to help users perform model choice and
parameter inference using Pool-seq data integrated into an Approximate
Bayesian Computation (ABC) framework. This package provides functions to
simulate Pool-seq data under models of ecotype formation and to import
Pool-seq data from real populations. Two ABC algorithms are implemented
to perform parameter estimation and model selection using Pool-seq data.
Cross-validation can also be performed to assess the accuracy of ABC
estimates and calculate model misclassification.

## Installation

You can install the development version of poolABC from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("joao-mcarvalho/poolABC")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(poolABC)
## basic example code
```
