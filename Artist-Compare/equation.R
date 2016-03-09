## -------------------------------
## Written by: Sam Tompkins
## Updated on 3/8/2016
##
## INFO 498F Final Project
## Other members include: Jeffrey Pinkstaff, Alyxis Burks, Evan Taylor
##
## This program uses an algorithm to decide which of two artists is better.
## It takes in two lists of data provided by the "data_from_artist.R" file.
## It is called by the server.R file.
## It returns one of the lists passed to it.
## -------------------------------

better_artist_algorithm <- function(art_one, art_two){
  
  #Set maximums used to divide single artist's data from
  max_foll <- art_one$followers_artist + art_two$followers_artist
  max_pop_trax <- art_one$sum_top_tracks + art_two$sum_top_tracks
  
  #Logic for best artist
  #---------------------
  #Calculate number between 0 and 1 based on:
  #   popularity number (0 - 100)
  #   number of followers (max = sum of each artist's followers)
  #   popularity index of top ten songs (0 - 1000) 
  
  index_one <- ( (art_one$pop_artist / 100) *
                 (art_one$followers_artist / max_foll) *
                 (art_one$sum_top_tracks / max_pop_trax)
               )
  
  index_two <- ( (art_two$pop_artist / 100) *
                   (art_two$followers_artist / max_foll) *
                   (art_two$sum_top_tracks / max_pop_trax)
  )
  
  # Return the list associated with the maximum of the two values
  better <- max(index_one, index_two)
  
  if (better == index_one) {
    return(art_one)
  } 
  else if (better == index_two) {
    return(art_two)
  }
  else {
    #Default is NULL -> occurs only in case of error
    return(NULL)
  }
}