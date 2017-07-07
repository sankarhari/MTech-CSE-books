mf
## Panel A: chemical vs magnetic (Data frame ironslag from DAAG)
plot(chemical ~magnetic, data=ironslag)
ironslag.lm <- lm(chemical ~magnetic, data=ironslag)
abline(ironslag.lm)
with(ironslag, lines(lowess(chemical ~magnetic, f=.9), lty=2))
## Panel B: Residuals from straight line fit, vs magnetic
res <- residuals(ironslag.lm)
plot(res ~ magnetic, xlab="Residual", data=ironslag)
with(ironslag, lines(lowess(res ~magnetic, f=.9), lty=2))
## Panel C: Observed vs predicted
yhat <- fitted(ironslag.lm)
plot(chemical ~ yhat, data=ironslag, xlab="Predicted chemical", ylab="Chemical")
with(ironslag, lines(lowess(chemical ~ yhat, f=.9), lty=2))
## Panel D: Check whether error variance seems constant
sqrtabs <- sqrt(abs(res))
plot(sqrtabs ~ yhat, data=ironslag, xlab = "Predicted chemical",
ylab = expression(sqrt(abs(residual))), type = "n")
panel.smooth(yhat, sqrtabs, span = 0.95)