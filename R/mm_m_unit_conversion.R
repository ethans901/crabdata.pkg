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
    mutate(mes_mm = {{col1}}/1) %>% 
    select(mes_mm)
  cm<-data %>% 
    na.omit(data) %>% 
    mutate(mes_cm={{col1}}/10) %>% 
    select(mes_cm)
  dm<-data %>% 
    na.omit(data) %>% 
    mutate(mes_dm={{col1}}/100) %>% 
    select(mes_dm)
  m<-data %>% 
    na.omit(data) %>% 
    mutate(mes_m={{col1}}/1000) %>% 
    select(mes_m)
  list<-c(mm,cm,dm,m)
  return(list)
}
#currnetly it works for the four columns, would like to improve and add columns to a table maybe???