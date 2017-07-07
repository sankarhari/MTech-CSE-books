## To get labeled output exactly as below, see the footnote

1) The numbers of female children in two-child families can be modeled as binomial
x<- dbinom(0:2, size=2, prob=0.5) # Simple version
names(x) <- 0:2
Inference: On average, 25% of two-child families will have no female child, 50% will have one female child, and 25% will have two female children

obtain the distribution of female children in four-child families
dbinom(0:4, size=4, prob=0.5)

2)  To calculate the probability that a four-child family has no more than two females,
add up the probabilities of 0, 1, and 2 females

pbinom(q=2, size=4, prob=0.5)

suppose a sample of 50 manufactured items is taken from an
assembly line that produces 20% defective items, Find the probability of observing fewer than five defectives in the sample is 0.0185

pbinom(q=4, size=50, prob=0.2)

3) To calculate the probability that a four-child family has no more than two females, add up the probabilities.

qbinom(p = 0.65, size = 4, prob = 0.5)

From cumulative probabilities to number of events. Thus, in the four-child family example, the following gives the minimum number of females such that the cumulative probability is greater than or equal to 0.65:

cross  Check  the result
sum(dbinom(0:2, size=4, prob=.5))

Poisson Distribution:
consider a population of raisin buns for which there are an average of 3 raisins per bun. Any individual raisin has a small probability of finding its way into any individual bun. We have the following probabilities for 0, 1, 2, 3, or 4 raisins per bun
dpois(x = 0:4, lambda = 3)

Cumulative probabilities

ppois(q = 0:4, lambda = 3)
0              1          2         3         4
0.0498 0.1991 0.4232 0.6472 0.8153

The probability of finding 2 or fewer raisins in a bun is 0.4232
