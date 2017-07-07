## Function to generate n sample values; skew population
sampvals <- function(n)exp(rnorm(n, mean = 0.5, sd = 0.3))
## Means across rows of a dimension nsamp x sampsize matrix of
## sample values gives nsamp means of samples of size sampsize.
samplingDist <- function(sampsize=3, nsamp=1000, FUN=mean)
apply(matrix(sampvals(sampsize*nsamp), ncol=sampsize), 1, FUN)
size <- c(3,10,30)
## Simulate means of samples of 3, 9 and 30; place in dataframe
df <- data.frame(y3=samplingDist(sampsize=size[1]),
y9=samplingDist(sampsize=size[2]),
y30=samplingDist(sampsize=size[3]))
## Simulate source population (sampsize=1)
y <-samplingDist(sampsize=1)
densityplot(~y3+y9+y30, data = df, outer=TRUE, layout = c(3,1),
   plot.points = FALSE, panel = function(x, ...) {
           panel.densityplot(x, ..., col = "black")
           panel.densityplot(y, col = "gray40", lty = 2, ...)
   })