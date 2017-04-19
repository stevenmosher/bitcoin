
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinydashboard)


 Difficulty <- "https://api.blockchain.info/charts/difficulty?format=csv&timespan=all"
 Price      <- "https://api.blockchain.info/charts/market-price?format=csv&timespan=all"
 HashRate   <-"https://api.blockchain.info/charts/hash-rate?format=csv&timespan=all"
 
 Diff <- function(fname=Difficulty){
   
   D <- read.csv(fname,stringsAsFactors = F,header=F)
   
   
 }

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })

})
