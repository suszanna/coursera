## ########### ################# ################
## Lesson 2, Part 2
## function: /Users/susanlmartin/coursera/complete.R
## complete <- function(directory, id=1:332)

## function does: returns df with 2 columns
##                col 1: id (filename)
##                col 2: nobs (number of complete cases)

## Usage: complete("specdata", c(2, 4, 8, 10, 12))
##        complete("specdata", 1)
##        complete("specdata", 30:25)

## Given:  directory: a char vector of len 1 (loc o csv files)
##         id: an integer vector indicating monitor id nums
##           1 Read a directory's files & 
##           2 Report number of completely observed cases (obs no NAs)
##             for obs with no missing data, note row number
##             for obs with no missing data, increment count nobs
## Return: data frame of 2 cols: id (the monitor), nobs (number of complete obs)
##         ID number, and nobs is the num of complete cases (obs w/out NA)
##         id   nobs
##          1    117
##          2    1041 

## input:  directory: isa char vector, len 1 indicates loc of CSV file
##         id: is a numeric vector, len 1 for the obs in file

## output: returns dataframe with 2 cols, id and nobs
##         def: 'complete.cases' identifies complete rows with no missing data

## ############### ################# #################
## todo:
## 1 unzip file and create dir 'specdata'
## 2 write function 'complete' to calculate nobs for each monitor
##   report num completely observed cases
## 3 calling format: complete("specdata", c(2, 4, 8, 10, 12))
## 4 output format: ##   id nobs
##                    1   2 1041 
##                    ...

## 1 unzip (already unzipped for this path)
## path <- "User/susanlmartin/coursera/specdata"
## unzip("path/specdata.zip") exdir = "specdata"

directory <- ("/Users/susanlmartin/coursera/specdata")
  ## complete <-function(directory, id = 1:332) {
  ## 'directory' is a character vector of len 1 for loc o CSV files
  ## directory <- "/Users/susanlmartin/dev/datasci/specdata"
  ## id: a numeric vector, len 1 for the obs in file
  
  ## make a files.list from 1:332 tabular data- include all files
  ## create empty data frame
  ## loop to rbind all files in data frame
  ## for monitor number 'id' sum the nobs using complete.cases
  ## write the id and final sum to data.frame
  ## do for id range given in argument
  
complete <-function(directory, id = 1:332) {
        ## create files.list from 1:332 tabular data for all files in ../specdata
        files_list <- list.files(directory, full.names=TRUE)
        ## create empty data frame
        dat <- data.frame
        ## 'id', an int vector for the monitor ID numbers in use
        for (i in "id") {
                ##loop through all files & rbind them together
                dat <- rbind(dat, read.csv(files_list[i]), specdata, id)
                ##data frame ready to parse with complete.case to sum complete nobs
                nobs <- complete.case(dat) 
                sub_dat <- nobs[1]
                }
        sub_dat  ## Ret data frame with (monitor id, & nobs as num complete cases/observations)
}
