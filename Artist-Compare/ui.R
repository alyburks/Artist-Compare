library(shiny)
library(plotly)
library(dplyr)

source("data_from_artist.R")
source("visualization.R")
source("equation.R")

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = "bootstrap.css",
  
  # Application title 
  
  
  titlePanel(h1(p("Spartify", style = "color:lightgreen"))), 
  
      sidebarLayout( 
        sidebarPanel( 
          
       textInput("first_artist",
                 label = h3("First Artist:"),
                 placeholder = "Enter Artist..."),
       
      textInput("second_artist",
                 label = h3("Second Artist:"),
                 placeholder =  "Enter Artist..."),
        actionButton("goButton", "FIGHT!")
      
      ),
      #
#, downloadLink('audio')
      mainPanel(
           tabsetPanel(
           tabPanel("Champion", textOutput('sentence'),imageOutput('image'), textOutput('previewSentence')), 
           tabPanel("Data", tableOutput('table')) 
           #tabPanel("Followers", plotlyOutput(visualization1))
      )
    )
  )
))

  
