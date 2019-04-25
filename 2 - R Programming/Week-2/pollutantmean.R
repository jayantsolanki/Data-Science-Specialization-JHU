pollutantmean <-  function(directory, pollutant, id=1:332){
  ## 'directorey' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate"
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
  meanPol<-0
  df<-NA
  for(i in id){
    name<-paste(directory, paste(formatC(i, width=3, flag="0"),'.csv',sep = ""), sep = "/")s
    temp <- read.csv(name)
    df <- rbind(df,temp)
  }
  if (pollutant=="nitrate"){
    meanPol <- mean(df$nitrate, na.rm = TRUE)
    meanPol
    
  }
  else{
    meanPol <- mean(df$sulfate, na.rm = TRUE)
    meanPol
  }
}
