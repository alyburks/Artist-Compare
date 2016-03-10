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
                 label = h3("First Artist:"),
                 value = "Adele"),
        textInput("second_artist",
                 label = h3("Second Artist:"),
                 value = "Drake"),
        actionButton("goButton", "FIGHT!")
      ),
      #
      mainPanel(
        textOutput('sentence'),
        tableOutput('table')
        #plotlyOutput(visualization1)
      ) 
    )
  )
)
