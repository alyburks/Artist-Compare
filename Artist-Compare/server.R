library(shiny)
library(plotly)
library(dplyr)

source("data_from_artist.R")
source("visualization.R")
source("equation.R")

shinyServer(function(input, output) {
  
  lists <- eventReactive(input$goButton ,{
    ret <- list()
    ret$artist1 <- each_artist(input$first_artist)
    ret$artist2 <- each_artist(input$second_artist)
    ret$best <- better_artist_algorithm(ret$artist1, ret$artist2)
    return(ret)
  })
    
  output$sentence <- renderText({
    temp <- lists()
    paste0("The better artist is ", temp$best$name_artist, "!")
  })
  
  output$image <- renderImage({
    temp <- lists()
    z = tempfile()
    download.file(temp$best$img_artist, z, mode = "wb")
    list(src = z,
         width = 200,
         height = 200,
         alt = "Artist Image")
  })
  
  output$table <- renderTable({
    temp <- lists()
    table <- data.frame(row.names = c("Popularity", "Followers", "Total Albums"))
    table$artist1 <- c(temp$artist1$pop_artist, temp$artist1$followers_artist, temp$artist1$num_albums)
    table$artist2 <- c(temp$artist2$pop_artist, temp$artist2$followers_artist, temp$artist2$num_albums)
    colnames(table) <- c(temp$artist1$name_artist, temp$artist2$name_artist)
    return(table)
  })
})
