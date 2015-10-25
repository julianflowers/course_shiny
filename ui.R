
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Distributions of health metrics for English LAs"),
    helpText("Use slider to control input"),
    helpText("Data source: http://www.healthprofiles.info"),
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
    
      sliderInput("life.expectancy",
                  "Life Expectancy:",
                  min = 80,
                  max = 88,
                  value = 84)
    ),

    # Show a plot of the generated distribution
    mainPanel(
     h3("Histogram of life expectancy"),
      plotOutput("model1")
     
    )
  )
))
