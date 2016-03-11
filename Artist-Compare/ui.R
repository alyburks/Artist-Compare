library(shiny)
library(plotly)

source("data_from_artist.R")
source("equation.R")

shinyUI(fluidPage(theme = "bootstrap.css",
  
  titlePanel(imageOutput('logo', height = "auto"),
             windowTitle = "Spartify"), 
  hr(),
  
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
            hr(),
            #Does not run two artist until pressed
            actionButton("goButton", "Fight")
      ),
      mainPanel(
        #Creates tabs
        h2(textOutput('both_names')),
        tabsetPanel(
            #Winner tab
             tabPanel("Winner", 
                      #h4(textOutput('both_names')),
                      #hr(),
                      h1(textOutput('sentence')),
                      imageOutput('image', height = "auto"), 
                      hr(),
                      h4(textOutput('previewSentence')), 
                      uiOutput('url')), 
             #Table of data tab
             tabPanel("Data Table", tableOutput('table')), 
             #Tab of interactive display
             tabPanel("Chart", 
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
             tabPanel("About", includeMarkdown("about.md")),
          selected = "About",
          id = "tab_panel")
      )
   )
))

  
