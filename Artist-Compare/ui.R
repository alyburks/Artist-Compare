library(shiny)
library(plotly)

source("data_from_artist.R")
source("equation.R")

shinyUI(fluidPage(theme = "bootstrap.css",
  
  titlePanel(imageOutput('logo', height = "auto")), 
  
  sidebarLayout( 
      sidebarPanel( 
            #Gets first artist from user 
             textInput("first_artist",
                       label = h3("First Artist:"),
                       placeholder = "Enter Artist..."),
            #Gets second artist from user
            textInput("second_artist",
                       label = h3("Second Artist:"),
                       placeholder =  "Enter Artist..."),
            #Does not run two artist until pressed
            actionButton("goButton", "Fight!")
      ),
      mainPanel(
        #Creates tabs
        tabsetPanel(
            #Winner tab
             tabPanel("Champion", 
                      h1(textOutput('sentence')),
                      imageOutput('image', height = "auto"), 
                      textOutput('previewSentence'), 
                      tags$audio(src = (textOutput('url')), type = "audio/mp3", autoplay = NA, controls = 1)), 
             #Table of data tab
             tabPanel("Data", tableOutput('table')), 
             #Tab of interactive display
             tabPanel("Followers", 
                      radioButtons("radioButtons", 
                                   label = h3("Select One"), 
                                   choices = list("Pop" = "pop_artist",
                                                  "Followers" = "followers_artist",
                                                  "Albums" = "num_albums",
                                                  "Current Hit Songs" = "num_hit_trax",
                                                  "Total Popularity of Top 10 Songs" = "sum_top_tracks"),
                                   selected = "pop_artist"),
                      plotlyOutput('visualization')),
             #Tab about the application
             tabPanel("About", h3(textOutput('about')))
        )
      )
   )
))

  
