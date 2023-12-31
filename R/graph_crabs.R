#'Plots a point graph 
#'
#'Takes two separate columns of a data frame.
#'Returns a point graph.
#' 
#'@param data .csv file as a data frame
#'@param column1 numerical column of length measurements 
#'@param column2 numerical column of width measurements
#'@return area Value from column 1 multiplied by column 2 (numeric) 
#' 
#'@export
#'

graph_crabs<-function(df,x,y){
  graph<-ggplot(data=df,mapping=aes({{x}},{{y}}))+geom_point()
  return(graph)
}

#This function is to plot a point graph of two columns in a data set.
#added text to push