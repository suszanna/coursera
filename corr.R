## ############ ############### ############
## Lesson 2, Part 3
## function:  /Users/susanlmartin/coursera/corr.R
## corr <- function(directory, threshold = 0)

## function does:  calculates correlation between sulfate and nitrate for given data
##                 where ((num of completely observed cases) > threshold)
##       returns:
##       col 1: minimum
##       col 2: 1st Qu.
##       col 3: median
##       col 4: mean
##       col 5: 3rd Qu.
##       col 6: max

## Usage:  corr("specdata", 400)
##         corr("specdata")   ## where default threshold == 0

## Given:  directory: a char vector of len 1( loc o csv files)
##         threshold: numeric vector of 1 for num of completely observed observations##
##                    required to compute correlation between nitrate and sulphate
## Return: a numeric vector of correlations
##         Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
##         -0.21057 -0.04999  0.09463  0.12525  0.26844  0.76313

## input:  directory: is a char vector, len 1 indicates loc of CSV file
##         threshold: if monitors meet threshold requirement, their data is considered
##         (The num of completely observed cases on all vars must be > threshold)

## output: returns numeric vector of correlations: min, 1st Q, median, mean, 3rd Q, max
##         if no monitors meet threshold, return numeric vector len 0

## ############ ############### ###############
## todo:
## create 'specdata' directory and unzip file
## write function 'corr.R' to correlate 2 pollutant datasets on condition for threshold

## calling format: cr <- corr("specdata", 150)
## output format:  Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
##                 -0.21057 -0.04999  0.09463  0.12525  0.26844  0.76313
## other possibilities, not for now:
##                 head(cr)
##                 summary(cr)
##                 length(cr)

## unzip to path below (if not already done)
## path <- "/Users/susanlmartin/dev/datasci/specdata.zip
## unzip("path/specdata.zip"), exdir = "specdata"

directory <- ("/Users/susanlmartin/dev/datasci/specdata")
## corr <- function("directory", threshold) {
## arguments:
## 'directory' - a character vector of len 1 for loc of CSV files
##  directory <- "/Users/susanlmartin/dev/datasci/specdata"
## 'threshold' - a numeric vector of len 1 used to identify candidate vectors
##    that have the num of completely observed cases on all vars that are > threshold 
##    as condition for applying the correlation function to 2 vectors. 

corr <- function(directory, threshold) {
        ## create a files.list from 1:332 (or inherit from complete.R) tabular data
        files.list <- list.files(specdata, full.names=TRUE)
        
        ## identfy nobs for x and y vectors, then try to correlate 
        ## create empty data frame
        xdat <- data.frame
        id = 1:332
        for ( i in id) {
                ##loop through the tabular data & fill data frame
                xdat <- rbind(dat, read.csv(files.list[i]), specdata, id)
                ## data frame ready to parse with complete.case to sum complete nobs
                xnobs <- complete.case(xdat)
                xdat <- xnobs[i]
                }
        ydat <- data.frame
        id = 1:332
        for ( i in id) {
                ##loop through the tabular data & fill data frame
                ydat <- rbind(ydat, read.csv(files.list[i]), specdata, id)
                ## data frame ready to parse with ocmplete.case to sum complete nobs
                ynobs <- complete.case(ydat)
                ydat <- ynobs[i]
                }
        ## create int vectors for 2 pollutants with content (min, Q1, median, mean, Q3, max) values
        ## compute x_nobs for sulfate, & ynobs for nitrate from specdata monitor obs
        if ((xnobs > threshold) & (ynobs > threshold)) {
                x <- c(min[xnobs], Q1[xnobs], median[xnobs], Q3[xnobs], max[xnobs])
                y <- c(min[ynobs], Q1[ynobs], median[ynobs], Q3[ynobs], max[ynobs])
                cr <- cor(x,y)
                }
        summary(cr)  ## output the summary data of the correlation - includes labels
        }

