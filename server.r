##########################################################################################
## Coursera Developing Data Products Week 4 Course Project                              ##
##                                                                                      ##
## This file contains the server settings for the Shiny application to demonstrate the  ##
## law of large numbers.                                                                ##
##                                                                                      ##
## PROGRAM: C:\Users\swenck\Documents\R\Coursera\Data Science\Course 9\Project\server.r ##
## AUTHOR:  Steve Wenck                                                                 ##
## DATE:    November 16, 2017                                                           ##
##########################################################################################

## Load SHINY package
library(shiny)

shinyServer(function(input, output)
{
    output$distPlot <- renderPlot({
        dist <- switch(input$dist,
                       Normal = rnorm,
                       Uniform = runif,
                       Lognormal = rlnorm,
                       Exponential = rexp,
                       rnorm)

        hist(dist(input$obs),
                  col = 'blue',
                  xlab = paste(input$dist, "distribution"),
                  main = paste("Histogram of a", input$dist, "distribution with ", prettyNum(input$obs, big.mark=",", trim=TRUE), " Observations"))  ##dist size, parameter from slider
    })
}
)