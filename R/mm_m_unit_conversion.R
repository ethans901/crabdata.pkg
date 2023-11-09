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
#'

mm_m_unit_change<-function(data,col1){
  mm<-data %>% 
    na.omit(data) %>%
    mutate(length_mm = {{col1}}/1000) %>% 
    select(length_mm)
  cm<-data %>% 
    na.omit(data) %>% 
    mutate(length_cm={{col1}}/100) %>% 
    select(length_cm)
  dm<-data %>% 
    na.omit(data) %>% 
    mutate(length_dm={{col1}}/10) %>% 
    select(length_dm)
  m<-data %>% 
    na.omit(data) %>% 
    mutate(length={{col1}}/1) %>% 
    select(length)
  list<-c(mm,cm,dm,m)
  return(list)
}
#mm_m_unit_con_2.0<-function(data,mm,cm,dm,m){
#did it push