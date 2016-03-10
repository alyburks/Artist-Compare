library(shiny)
library(plotly)
library(dplyr)

source("data_from_artist.R")
source("visualization.R")
source("equation.R")

shinyUI(fluidPage(
  #
  titlePanel("Spartify"), 
    #
    sidebarLayout(
      #
      sidebarPanel( 
        textInput("first_artist",

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = "bootstrap.css",
  
  # Application title 
    titlePanel("Compare Artists"), 

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
      mainPanel(
        h3(textOutput('sentence')),
        imageOutput('image'),
        tableOutput('table')
        #plotlyOutput(visualization1)
      ) 
    )
  )
)
