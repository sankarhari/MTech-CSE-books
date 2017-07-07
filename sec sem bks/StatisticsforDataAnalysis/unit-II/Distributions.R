## Simplified version of graph
curve(0.5*9.8*xˆ2, from=0, to=5, xaxs="i", yaxs="i",
xlab = "Time (sec)", ylab = "Distance fallen (m)")
text(0.25, 105, expression("Distance" == frac(1,2)*phantom(i)*g*tˆ2), adj=0)