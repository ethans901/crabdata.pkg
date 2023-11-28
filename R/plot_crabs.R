#'Measures area of carapace 
#'
#'Takes the length and width of the carapace of the crab and multiplies them. 
#'Returns the area of the carapace.
#' 
#'@param data .csv file as a data frame
#'@param col_dep a column of data that serves as the dependent variable
#'@param col_indep a different column of data that serves as the independent variable
#'@return linear data output 
#' 
#'@export

plot_crabs<-function(df, dependent, independent_cols ){
  if(is.numeric({{df[[dependent]]}}))  {
    return_summary <- df %>%
      select(a = quo_name(dependent), starts_with(independent_cols)) %>%
      lm(a ~ ., data = .) %>%
      summary()
    return(return_summary)
  } else {
    print("Response not numeric, not appropriate for LM")
  }
  
}

 #This function is to calculate and a linear model and provide a summary of the model. 
#This allows us to see if two variable in a data set are related linearly.
#(For example, in the crabs data set, this function was used to determine if color and Latitude were related.)
#Would it be possible to make an "if-then" to denote between a lm and an anova 
# check if independent is numeric
