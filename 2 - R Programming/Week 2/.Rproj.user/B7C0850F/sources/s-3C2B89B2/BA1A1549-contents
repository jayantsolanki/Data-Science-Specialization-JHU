complete <-  function(directory, id=1:332){
  ## 'directorey' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1 117
  ## 1 1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the 
  ## number of complete cases
  
  df <- data.frame(id=integer(), nobs=integer())
  for(i in id){
    name<-paste(directory, paste(formatC(i, width=3, flag="0"),'.csv',sep = ""), sep = "/")
    temp <- read.csv(name)
    print(nrow(temp))
    tempCount <- data.frame(i,nrow(na.omit(temp)))
    names(tempCount)<-c('id','nobs')
    df<- rbind(df, tempCount)

  }
  
  df
  

}
