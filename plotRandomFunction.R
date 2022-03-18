##############################
##
## plotRandomFunction.R
##
## Hannah Schultz
## March 18, 2022
##
## A function that generates a sequence of random normal variables
## and makes a histogram.
##
## The function expects the following inputs:
## n - sample size (default with n=1)
## mu - mean of normal distribution (default, mu=0)
## sigma - sd of normal distribution (default, sigma=1)
## hist_breaks - number of breakpoints in histogram (default 6)
## This function is based on the code from
## Friday, March 11, 2022
##
# plotRandom <- function(n=1) {
#   hist(rnorm(n=n, mean=0, sd=1))
# }
## ctrl + shift + C toggles all comments in a selected text block
## Today, we will add to it.
plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) { ## Change to Greek symbols only to not reuse words
  hist(rnorm(n=n, mean=mu, sd=sigma))
}
## Note tester fails if mu and sigma are "missing, with no default"
## Functions always need default parameters
## Ranges are 'bins'