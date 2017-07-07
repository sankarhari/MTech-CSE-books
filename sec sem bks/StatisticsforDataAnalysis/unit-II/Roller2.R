## Fit line - by default, this fits intercept & slope.
## requires data frame roller (DAAG)
#roller.lm <- lm(depression ~weight, data=roller)
## For a model that omits the intercept term, specify
lm(depression ~ -1 + weight, data=roller)
## Compare with the code used to plot the data
plot(depression ~ weight, data=roller)
## Add a the fitted line to the plot
abline(roller.lm)