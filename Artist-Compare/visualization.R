##Visualization. Alyxis will do this once we talk about it.

require(plotly)

visualization1 <- function(df){
  #Detail about bar graph
  p <- barplot(df,
               xlab = "Followers" ,
               ylab = "Total Followers",
               col = ("blue"),
               main = 'Artist 1 Followers VS. Artist 2 Followers')
  return(p)
}

