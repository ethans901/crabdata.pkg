#'Measures area of carapace 
#'
#'Takes the length and width of the carapace of the crab and multiplies them. 
#'Returns the area of the carapace.
#' 
#'@param data .csv file as a data frame
#'@param column1 numerical column of length measurements 
#'@param column2 numerical column of width measurements
#'@return area Value from column 1 multiplied by column 2 (numeric) 
#' 
#'@export
 
crab_area<-function(data,column1,column2){
  columns <- data %>% 
    select({{column1}}, {{column2}})  
  if(sum(columns) > 0 ){
  return<-data %>% 
    mutate(new_col={{column1}}*{{column2}})
    select(new_col,{{column1}},{{column2}})
    return(return)}
  else{print("something is wrong")}
}
#This function multiplies two the values from two columns together.
#It was made with the purpose to multiply carapace length and width together to find the area of the crab.