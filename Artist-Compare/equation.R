##This is going to be the file for the equation. It will be based off the data. This print out our reasons
##but also return who is the better artist along with a picture of them. Sam, This is what you will finish. We
##can talk about later what we feel would make a better artist

equation <- function(artist1, artist2){
  #sets default
  best_artist <- artist1
  
  #This is an example of how you would create the equation
  if (artist1$subscribers > artist2$subscribers){
    best_artist <- artist1
  }else{
    best_artist <- artist2
  }
  
  return (best_artist)
}