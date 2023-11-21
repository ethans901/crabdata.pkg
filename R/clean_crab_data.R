#'Omit NA Values
#'
#'Takes a .csv saved as a data frame and removes any NA values. 
#'Returns the data frame with no NA values.
#' 
#'@param data .csv file as a data frame
#'@return data A data frame that will have to be saved as a new data frame (numeric) 
#' 
#'@export
#'
clean_crabs_data<-function(data){
  check<-data %>% 
    select(rear_width,body_depth)
    if(sum(check)>0)
    {data_new<-drop_na({{data}})
    return(data_new)}else{
      print("NAs seem to be present")
    }
}
#This function is to clean up a data set are remove any possible NA values present.

