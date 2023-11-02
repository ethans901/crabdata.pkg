linear_model_crabs<-function(data,col1,col2){
  line<-data %>% summary(lm({{col1}}~{{col2}},{{data}}))
  return(line)
}
#This function is to calculate and a linear model and provide a summary of the model. 
#This allows us to see if two variable in a data set are related linearly.
#(For example, in the crabs data set, this function was used to determine if color and Latitude were related.)

#area_vs_latitude<-function(data,column1,column2,column3){
  #area<-data %>% 
    #na.omit(data) %>% 
    #mutate(area={{column1}}*{{column2}})
  #crab_fit<-lm(area~{{column3}},data) %>% 
    #summary(crab_fit)
  #return(crab_fit)
#}