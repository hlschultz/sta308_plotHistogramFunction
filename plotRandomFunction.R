##############################
##
## plotRandomFunction.R
##
## Hannah Schultz
## March 18, 2022
## amended on March 28, 2022 for error checking
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

## is.wholenumber() is from the help documentation on is.integer
is.wholenumber <- function(x, tol = .Machine$double.eps^0.5) {
  abs(x - round(x)) < tol
}

plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) { ## Change to Greek symbols only to not reuse words
  if ( !is.wholenumber(n) ) {
    warning(paste("Sample size n should be a whole number \n R is using n=floor(n)=", floor(n)))
  }
  if(n < 0) {
    stop("Sample size n must be positive") ## error message changed to Error in plotRandom(n = -20) : Sample size n must be positive
  } else {
    hist(rnorm(n=n, mean=mu, sd=sigma),
         breaks=hist_breaks)
  }
}
## Note tester fails if mu and sigma are "missing, with no default"
## Functions always need default parameters
## Ranges are 'bins'