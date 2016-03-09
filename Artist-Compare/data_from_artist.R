##File for data
##This is going to be the file where we collect the data we feel is necessary for use to determine who the better
##Artist is. Kind of like the super function from assignment 7. So since Jeff you did this orginally you can do this part
## Followers, Popularity, how many albums, top tracks
##alyxis needs a data table that has the followers

require(jsonlite)
require(curl)
require(knitr)
require(dplyr)

each_artist <- function(artist){
  
  
  #Initialize an empty list for all the variables I find later. 
  ret <- list()
  
  
  #Gives artist searched
  artist_url <- paste0('https://api.spotify.com/v1/search?q=', artist , '&type=artist')
  
  #URL for ARTIST data (specific adele example)
  artist_data <- fromJSON(artist_url)
  
  #gives IDs for artist Adele. 
  
  id <- artist_data$artists$items$id[1]
  
  #This is the url wanted for each specific artist (the top one on Spotify)
  artist_info <- paste0('https://api.spotify.com/v1/artists/', 
                         id)
  
  #The important variables to know about each artist:
  
  artist_top_data <- fromJSON(artist_info)
  
  ret$followers_artist <- artist_top_data$followers$total
  
  ret$img_artist <- artist_top_data$images$url[3] #We didn't want TOO big
  
  ret$name_artist <- artist_top_data$name
  
  ret$pop_artist <- artist_top_data$popularity
  #End of basic info
  
  
  
  #Gives albums for artist 
  artist_album <- paste0('https://api.spotify.com/v1/artists/', 
                         id , '/albums?market=ES&album_type=album')
  
  album_info <- fromJSON(artist_album)
  
  ret$num_albums <- (album_info$total)
  

  #Gives artists top tracks but first need artist ID from artist_data
  # Gives top tracks in US
   top_tracks <- paste0('https://api.spotify.com/v1/artists/',id,'/top-tracks?country=US')
   
   top_track_data <- fromJSON(top_tracks)
   
   ret$top_ten_tracks_names <- top_track_data$tracks$name
   ret$top_ten_tracks_pop <- top_track_data$tracks$popularity
   
   #For Sam to compare values for Artists. 
   ret$sum_top_tracks <- sum(top_ten_tracks_pop)
  
   return(ret) 
}

