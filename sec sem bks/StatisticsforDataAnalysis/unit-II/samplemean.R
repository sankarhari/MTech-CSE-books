library(lattice)
## Function to generate n sample values; skew population
sampvals <- function(n)exp(rnorm(n, mean = 0.5, sd = 0.3))
## Means across rows of a dimension nsamp x sampsize matrix of
## sample values gives nsamp means of samples of size sampsize.
samplingDist <- function(sampsize=3,
nsamp=1000, FUN=mean)
apply(matrix(sampvals(sampsize*nsamp),
ncol=sampsize), 1, FUN)
size <- c(3,10,30)
