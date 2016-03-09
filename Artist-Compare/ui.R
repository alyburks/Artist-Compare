
source("data_from_artist.R")
source("visualization.R")
library(shiny)

#install.packages('shinythemes')
#require(shinythemes)


# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = shinytheme('Cerulean'),
  
  # Application title 
    titlePanel("Compare Artists"), 

      sidebarLayout( 
        sidebarPanel( 
      
  
       textInput("first_artist",
                 label = h3("First Artist:"),
                 value = "Enter artist..."),
       textInput("second_artist",
                 label = h3("Second Artist:"),
                 value = "Enter artist...")
    

        ),
    mainPanel(
        h3(textOutput('userText')),
        h3(textOutput("Vs.")),
        h3(textOutput('userText2')),
        textOutput('Data')
        #textOutput('Data')
#      plotlyOutput(visualization1)
    ) 
    
)

))
