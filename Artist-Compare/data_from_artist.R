<<<<<<< 40176b05537d472f3a03b7b571722d188c3d09f9
##File for data
##This is going to be the file where we collect the data we feel is necessary for use to determine who the better
##Artist is. Kind of like the super function from assignment 7. So since Jeff you did this orginally you can do this part
## Followers, Popularity, how many albums, top tracks
##alyxis needs a data table that has the followers

each_artist <- function(artist){
  artist_data <- paste0('https://api.spotify.com/v1/search?q=', artist , '&type=artist')
  artist_album <- paste0('https://api.spotify.com/v1/artists/', artist_data$id, '/albums?market=ES&album_type=album')
  ## top tracks https://api.spotify.com/v1/artists/{id}/top-tracks
}
=======
##File for data
##This is going to be the file where we collect the data we feel is necessary for use to determine who the better
##Artist is. Kind of like the super function from assignment 7. So since Jeff you did this orginally you can do this part
## Followers, Popularity, how many albums, top tracks
each_artist <- function(artist){
  artist_data <- paste0('https://api.spotify.com/v1/search?q=', artist , '&type=artist')
  artist_album <- paste0('https://api.spotify.com/v1/artists/', artist_data$id, '/albums?market=ES&album_type=album')
  ## top tracks https://api.spotify.com/v1/artists/{id}/top-tracks
}
>>>>>>> whats the problem
