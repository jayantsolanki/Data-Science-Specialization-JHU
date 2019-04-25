corr <-  function(directory, threshold=0){
  ## 'directorey' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## threshold is a numeric vector of length 1 indicating the 
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!

  correlation <-c()
  for(i in 1:332){
    name <- paste(directory, paste(formatC(i, width=3, flag="0"),'.csv',sep = ""), sep = "/")
    temp <- read.csv(name)
    temp <- na.omit(temp)
    #df <- rbind(df,temp)
    if(nrow(temp)>threshold){
      #tempcorr <- cor(temp$nitrate, temp$sulfate)
      correlation <- rbind(correlation, cor(temp$nitrate, temp$sulfate))
    }
  }
  correlation

  
  
}
