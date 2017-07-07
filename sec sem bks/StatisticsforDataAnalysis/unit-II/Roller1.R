## Plot depression vs weight: data frame roller (DAAG)
plot(depression ~ weight, data = roller, xlim=c(0,1.04*max(weight)),
ylim=c(0,1.04*max(depression)),
xaxs="i", yaxs="i", # "i"=inner: Fit axes exactly to the limits
xlab = "Weight of roller (t)", ylab = "Depression(mm)", pch = 16)
abline(0, 2.25) # A slope of 2.25 looks about right