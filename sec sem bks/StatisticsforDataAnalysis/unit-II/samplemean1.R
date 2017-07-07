## Simulate means of samples of 3, 9 and 30;
#place in dataframe
df <- data.frame(y3=samplingDist(sampsize=size[1]),
y9=samplingDist(sampsize=size[2]),
y30=samplingDist(sampsize=size[3]))
y <- samplingDist(sampsize=1)
densityplot(~y3+y9+y30, data = df, outer=TRUE,
layout = c(3,1),
plot.points = FALSE,
panel = function(x, ...) {
panel.densityplot(x, ...,
col = "black")
panel.densityplot(y, col = "gray40", lty = 2, ...)
