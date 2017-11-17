Developing Data Products Week 4 Assignment - Law of Large Numbers App
========================================================
author: Steve Wenck
date: November 17, 2017
autosize: true
transition: fade
font-import: http://fonts.googleapis.com/css?family=Bitter
font-family: 'Bitter'

Law of Large Numbers Demonstration
========================================================

<h3>The law of large numbers:</h3>
- Describes the result of performing the same experiment a large number of times.
- Average of the results from a large number of trials should be close to the expected value.
- Average of results will tend to become closer to expected value as more trials are performed.

The law of large numbers can be a hard concept for new statistics students to comprehend. My Shiny app presents an interactive graphical demonstration of the concept.

Law of Large Numbers Description
========================================================


```r
## Create normal distributions with 10 & 100,000 observations
norm1 <- rnorm(10)
norm2 <- rnorm(100000)

## Create uniform distributions with 10 & 100,000 observations
unif1 <- runif(10)
unif2 <- runif(100000)

## Prepare histogram plots of the normal and uniform distribution examples
par(mfrow=c(2,2))
hist(norm1, main="Normal distribution of 10 obs", xlab="Normal 10 obs")
hist(norm2, main="Normal distribution of 100,000 obs", xlab="Normal 100,000 obs")
hist(unif1, main="Uniform distribution of 10 obs", xlab="Uniform 10 obs")
hist(unif2, main="Uniform distribution of 100,000 obs", xlab="Uniform 100,000 obs")
```

As with the application I built, above I am showing the code that will demonstrate the law of large numbers. The application has four different types of distributions (normal, uniform, log normal, and exponential) and a range of observations from 10 to 25,000. The code above simulates what the application is doing - displaying histograms for varying number of obswervations for different distribtion types.

Histograms Depicting Law of Large Numbers
========================================================

![plot of chunk unnamed-chunk-2](week4proj-figure/unnamed-chunk-2-1.png)

This slide simulates what the user will see in the application - the more observations that are included in the distribution, the closer the distribution is to the expected distribution.

Law of Large Numbers Demonstration Application
========================================================

To help students understand how the law of large numbers works, my application takes input from the user in terms of number of observations and type of distribution and then creates a histogram with the input. Users of the app can see how increasingt he number of observations makes the selected distribution type look more like the expected distribution. Thus demonstrating the law of large numbers.

- The application is hosted at: [linked phrase](http://example.com)
- The application source code and this presentation are located in the following GitHub repository: [linked phrase](http://example.com)

