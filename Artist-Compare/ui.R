library(shiny)
library(plotly)
library(dplyr)

source("data_from_artist.R")
source("visualization.R")
source("equation.R")

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = "bootstrap.css",
  
  # Application title 
  
  tags$head(
    tags$style(type='text/css', 
               "{font-size: 69px} ")),    
  
  titlePanel(h1(p("Spartify", style = "color:lightgreen"))), 
  
      sidebarLayout( 
        sidebarPanel( 
          
  
       textInput("first_artist",
                 label = h3("First Artist:"),
                 placeholder = "Enter Artist..."),
        textInput("second_artist",

                 value = "Adele"),
      textInput("second_artist",
                 label = h3("Second Artist:"),
                 placeholder =  "Enter Artist..."),
        actionButton("goButton", "FIGHT!")
      ),
      #
      mainPanel(
        h3(textOutput('sentence')),

        
        h3(textOutput ('sentence')),
        imageOutput('image'),
        tableOutput('table')
        #plotlyOutput(visualization1)
      ) 
    )
  )
)

  
