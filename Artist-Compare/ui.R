#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title 
    titlePanel("Compare Artist"), 

      sidebarLayout( 
        sidebarPanel( 
      
  
       textInput("first_artist",
                 label = h3("First Artist:"),
                 value = "Enter artist first name..."),
       textInput("second_artist",
                 label = h3("Second Artist:"),
                 value = "Enter artist first name...")

    

        ),
    mainPanel( 
      textOutput('userText'),
      textOutput('userText2')
    ) 
    
)

))
