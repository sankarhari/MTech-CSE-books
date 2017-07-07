#dnorm() gives values of the probability density function

## Plot the normal density, in the range -3 to 3
z <- pretty(c(-3,3), 30) # Find ˜30 equally spaced points
ht <- dnorm(z) # By default: mean=0, variance=1
plot(z, ht, type="l", xlab="Normal deviate", ylab="Density", yaxs="i")
# yaxs="i" locates the axes at the limits of the data
polygon(c(z[z <= 1.0], 1.0), c(dnorm(z[z <= 1.0]), 0), col="grey")

#pnorm() calculates the cumulative probability, that is, the area under
#the curve up to the specified ordinate or x-value.
pnorm(1.0)

# Other examples
## Additional examples
pnorm(0) # .5 (exactly half the area is to the left of the mean)
pnorm(-1.96) # .025
pnorm(1.96) # .975
pnorm(1.96, mean=2) # .484 (a normal distribution with mean 2 and SD 1)
pnorm(1.96, sd=2) # .836 (sd = standard deviation)
7 ## Additional examples
qnorm(0.841) # 1.0
qnorm(0.5) # 0
qnorm(0.975) # 1.96
qnorm(c(.1,.2,.3)) # -1.282 -0.842 -0.524 (10th, 20th and 30th percentiles)
qnorm(.1, mean=100, sd=10) # 87.2 (10th percentile, mean=100, SD=10)

#The function qnorm()
#calculates the deviate that corresponds to a given cumulative probability, that is, the area
#under the curve up to the specified ordinate. The q stands for quantile. Another term,
#that has in mind the division of the area into 100 equal parts, is percentile. For example,
#the 90th percentile is 1.28.

qnorm(.9)