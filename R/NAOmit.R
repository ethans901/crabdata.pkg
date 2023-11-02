#'Omit NA Values
#'
#'Takes a .csv saved as a data frame and removes any NA values. 
#'Returns the data frame with no NA values.
#' 
#'@param data .csv file as a data frame
#'@return data A data frame that will have to be saved as a new data frame (numeric) 
#' 
#'@export
clean_crabs_data<-function(data){
  data_new<-na.omit(data)
  return(data_new)
 }
#This function is to clean up a data set are remove an possible NA values present.