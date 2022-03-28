
source("plotRandomFunction.R")

## Line 2 above tells R to open and run ALL of the code
## in the file, plotRandomFunction.R

plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)

plotRandom(n=60, mu=70, sigma=2.3)
plotRandom(n=60000, mu=70, sigma=2.3) ## Different bins result in vastly different results

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks = 30)

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks = 300)

set.seed(20220318)
plotRandom(n=20)

## Playing around with bin sizes to understand how hist() works
set.seed(1)
x <- rnorm(n=200)

hist(x)
hist(x, breaks=1) ## Breaks: how much separation, aka. 2 boxes here
hist(x, breaks=0) ## Fails because we need at least 2 bins
hist(x, breaks=3)
hist(x, breaks=12) ##

## today, march 28, we will update our function to prevent
## user error.
plotRandom(n=-20) ## does not run
plotRandom(n=43.5234) ## runs, but 
        ## should not because n should be a positive integer
        ## runs because it rounds up to make the number an integer
## to understand what is happening...
x <- rnorm(n=43.5234)
length(x)
## ^ appears to be truncating, = 43
## we can do two things to our program:
## 1. prevent the user from specifying a negative number
## 2. if the user specifies a positive 'real' number,
##    we should tell them what value is actually being used
##
## 'if' block will help us to check
## two functions to print are print and stop
## help(is.integer) - a function that will check if something is an int
