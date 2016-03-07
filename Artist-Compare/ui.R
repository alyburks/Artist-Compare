
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title 
    titlePanel("Compare Artists"), 

      sidebarLayout( 
        sidebarPanel( 
      
  
       textInput("first_artist",
                 label = h3("First Artist:"),
                 value = "Enter artist..."),
       textInput("second_artist",
                 label = h3("Second Artist:"),
                 value = "Enter artist..."),
       actionButton("action", label = "Go!")
    

        ),
    mainPanel(
        h3(textOutput('userText')),
        h3(textOutput("Vs.")),
        h3(textOutput('userText2')),
        textOutput('value')
#      plotlyOutput(visualization1)
    ) 
    
)

))

