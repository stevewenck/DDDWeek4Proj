##########################################################################################
## Coursera Developing Data Products Week 4 Course Project                              ##
##                                                                                      ##
## This file contains the user interface settings for the Shiny application to          ##
## demonstrate the law of large numbers.                                                ##
##                                                                                      ##
## PROGRAM: C:\Users\swenck\Documents\R\Coursera\Data Science\Course 9\Project\ui.r     ##
## AUTHOR:  Steve Wenck                                                                 ##
## DATE:    November 16, 2017                                                           ##
##########################################################################################

## Load SHINY package
library(shiny)

## Set up user interface
shinyUI(
    fluidPage(
        ## Application title
        titlePanel("Demonstration of the Law of Large Numbers"),

        ## Sidebar with a slider input for number of observations and radio buttons for distribution type
        sidebarLayout(
            sidebarPanel(
                fluidRow(column(8,
                                sliderInput("obs",
                                            "Number of observations:",
                                            min = 10,
                                            max = 25000,
                                            value = 100))
                ),
                fluidRow(column(8,
                                radioButtons("dist",
                                             "Distribution type:",
                                             c("Normal" = "Normal",
                                               "Uniform" = "Uniform",
                                               "Lognormal" = "Lognormal",
                                               "Exponential" = "Exponential")))
                )
            ),

            ## Main panel displays histogram with the selections incorporated
            mainPanel(h4("Use the controls in the left pane to select"),
                      h5(em("1. The number of observations")),
                      h5(em("2. The distribution type")),
                      h4("The chart adjusts automatically to reflect the effect of the number of observations and the distribution type."),
                      plotOutput("distPlot"),
                      p("As you increase the number of observations, the histogram of the selected distribution gets closer and closer to appearing as would the expected distribution for that type. This is demonstrating the law of large numbers.")
            )
        )
    )
)