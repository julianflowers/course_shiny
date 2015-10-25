
hp3 <-read.csv("hp3.csv")
library(shiny)

shinyServer(function(input, output) {

  output$model1 <- renderPlot({

    # generate bins based on input$bins from ui.R
    

    # draw the histogram with the specified number of bins
    hist(hp3$life.expectancy, col ="grey")
    abline(v = input$life.expectancy, col = 'blue', lwd = 2)
  })
  

})
