#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
    
    # generate bins based on input$bins from ui.R
    #artist1 <- paste0('https://api.spotify.com/v1/search?q=',input$first_artist, '&type=artist')
    #artist2 <- paste0('https://api.spotify.com/v1/search?q=',input$second_artist, '&type=artist')
    
    output$userText <- renderText({ 
       return(paste0('The user typed: ', input$first_artist)) 
     }) 
    output$userText2 <- renderText({ 
      return(paste0('The user typed: ', input$second_artist)) 
    }) 
    
   
  
})
