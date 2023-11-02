#'Converts the unit millimeters to meter
#'
#'Takes a measurement of millimeters usually used to measure smaller crabs and divides by 1000. 
#'Returns the same measurement meters.
#' 
#'@param data .csv file as a data frame
#'@param col1 numerical column of measurement that needs converting 
#'@return meters The same measurement as a meter (numeric) 
#' 
#'@export 

mm_m_unit_change<-function(data,col1){
  clean<-data %>% 
    na.omit(data) %>%
    mutate(length_conv = {{col1}}/1000) %>% 
    select(length_conv,{{col1}})
  return(clean)
}
#Some of the biggest crabs in the world are meters long.
#This function changes the current unit of measurements, millimeters, to meters.