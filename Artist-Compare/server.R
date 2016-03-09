
##This and the ui will be where we combine the data and run the equation and then print out a picture
##We should present the data we recieve and internally also run it through the equation in the back ground
##Evan this is what you will do since you are familiar with sourcing and everything like you did in assignment 7

library(shiny)
library(plotly)
library(dplyr)

source("data_from_artist.R")
source("visualization.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    
    output$userText <- renderText({ 
       return(paste0(input$first_artist)) 
     }) 
    output$userText2 <- renderText({ 
      return(paste0(input$second_artist)) 
    }) 
    output$value <- renderPrint({ input$action })
   
    output$Vs. <- renderText({ 
      return(paste0('Vs.'))})
    
    output$Data <- renderText({
      Data <- each_artist("Adele")
      return(Data)
    })
  
})
