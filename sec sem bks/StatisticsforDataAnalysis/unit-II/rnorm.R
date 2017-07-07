set.seed (21)
# Use to reproduce the data in the figure
par(mfrow=c(2,3))
x <- pretty(c(6.5,13.5), 40)
for(i in 1:5){
	y <- rnorm(50, mean=10, sd=1)
	hist(y, prob=TRUE, xlim=c(6.5,13.5), ylim=c(0,0.5),main="")
	lines(x, dnorm(x,10,1))
}
par(mfrow=c(1,1))
