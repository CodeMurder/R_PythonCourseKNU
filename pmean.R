buildPath <- function (directory, id) 
{
  getwd()
  setwd("F:/1 course maga/R & Python")
  fileName <- id
  if (id < 10) 
  {
    fileName <- paste("00", id, sep="")
  }
  else if (id < 100) 
  {
    fileName <- paste("0", id, sep="")
  }
  filePath <- paste(fileName, ".csv", sep="")
  resultPath <- paste(directory, filePath, sep="/")
  resultPath
}
# 1
pmean <- function(directory, pollutant, id = 1:332) 
{
  df
  for (i in id) 
  {
    newdf <- read.csv(file=buildPath(directory, i))
    if (typeof(df) == "list") 
    {
      df <- rbind(df, newdf)
    }
    else 
    {
      df <- newdf
    }
  }
  mean(df[, paste(pollutant)], na.rm = TRUE)
}

pmean("specdata", "sulfate", 1:10)

pmean("specdata", "nitrate")

complete <- function (directory, id) 
{
  df
  for (i in id) 
  {
    newdf <- read.csv(file=buildPath(directory, i))
    nobs <- nrow(na.omit(newdf))
    if (typeof(df) == "list")
    {
      df <- rbind(df, data.frame(id = i, nobs))
    }
    else 
    {
      df <- data.frame(id = i, nobs)
    }
  }
  df
}
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 50:60)

corr <- function (directory, threshold = 0) 
{
  result <- c()
  for (i in 1:332) 
  {
    df <- read.csv(file = buildPath(directory, i))
    cleandf <- na.omit(df)
    if (nrow(cleandf) > threshold) 
    {
      result <- c(result, cor(cleandf[, 2], cleandf[, 3]))
    }
  }
  result
}

cr <- corr("specdata", 150)
head(cr)
summary(cr)

cr <- corr("specdata", 400)
head(cr)
summary(cr)

cr <- corr("specdata", 5000)
head(cr)
summary(cr)
length(cr)
