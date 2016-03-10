library(shiny)
library(plotly)

source("data_from_artist.R")
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
           tabPanel("Champion", h1(textOutput('sentence')),imageOutput('image'), textOutput('previewSentence')), 
           tabPanel("Data", tableOutput('table')), 
           tabPanel("Followers", 
                    radioButtons("radioButtons", 
                                 label = h3("Select One"), 
                                 choices = list("Pop" = "pop_artist",
                                                "Followers" = "followers_artist",
                                                "Albums" = "num_albums",
                                                "Current Hit Songs" = "num_hit_trax",
                                                "Total Popularity of Top 10 Songs" = "sum_top_tracks"),
                                 selected = "pop_artist"),
                    plotlyOutput('visualization'))
      )
    )
  )
))

  
