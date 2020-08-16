  ##  ##################### ################# ############### #######################
  ##  Lesson2 Part 1 
  ##  function: /Users/susanlmartin/coursera/pollutantmean.R
  ##  pollutantmean <-function(directory, pollutant, id = 1:332) {}
  
  ## function does: returns mean of specified pollutant for given monitor range

  ## Usage: pollutantmean("specdata", "nitrate", 70:72)
  ##        [1] 1.706047
  
  ## Given: directory, pollutant, id numbers (like 1:10)
  ##    Read that monitor's PM data from '../specdata', for given id's
  ##    Take mean across all monitors for the specified pollutant (ignore NAs)
  ## Return: mean of specified pollutant
  
  ##  input:
  ##  'directory' isa char vector, len 1 for loc o CSV file  
  ##  'pollutant' isa char vector, len 1 for mean pollutant calculation, for either
  ##   __'sulfate' or 'nitrate'.
  ##  'id' is an int vector, indicates the monitor ID numbers under test
  
  ##  output:
  ##  Returns the mean of the pollutant across all monitors list
  ##  in the 'id' vector, ignoring NA's
  
  ##  source saved in: 'pollutantmean.R'

  ## ################### ################## ##########
  ## todo: 
  ## 1. unzip file and create dir 'specdata'
  ## 2. write function 'pollutantmean' to calculate mean of pollutant
  ##     __(sulfate OR nitrate) across specified list of monitors.
  ##  output format:
  ##    pollutantmean("specdata","sulfate", 1:10)
  ##    [1] 4.06128
  ## 3. function pollutantmean takes 3 args:
  ##    'directory', 'pollutant', 'id'
  ## _________________________________________________
  ## 1 unzip
  ## path <- "/User/susanlmartin/coursera/specdata.zip"
  ## unzip("path/specdata.zip", exdir = "specdata")
  
  ## pollutantmean <-function(directory, polutant, id = 1:332) {
  ## directory <- "/Users/susanlmartin/coursera/specdata"
  ## pollutant <- "sulfate"
    
  ##        make a files.list from 1:332 tabular data- include all files
  ##        make an empty data frame
  ##        Loop to rbind all files in data frame     
  ##        save off requested range of id's as sub_data
  ##        get mean of sub_data while using na.rm to remove all NAs
  ##        publish mean by stating it on last line
  ############ ############## #########
  ##
  ## output:
  ## pollutantmean("specdata","sulfate", 1:10)
  ## [1] 4.06128
  ## ############### ######### ########

## init full path to ../specdata
directory <- ("/Users/susanlmartin/coursera/specdata")
pollutant <- ("sulfate")
##path <- "/User/susanlmartin/coursera/specdata.zip"
##unzip("path/specdata.zip", exdir = "specdata")

## 2,3 get mean of one pollutant's data & output to console
pollutantmean <- function(directory, pollutant, id = 1:332) {
        #create files.list of all files in ../specdata
        files_list <- list.files(directory, full.names=TRUE)
        #create empty data frame object
        dat <- data.frame 
        for (i in "id") {
                #loop through all files, & rbind them tog
                dat <- rbind(dat, read.csv(files_list[i]), specdata, sulfate, id)
                pol <- ('sulfate')
        }
        #grab specified id's only in dat_subset
        dat_subset <- dat[which(dat[, id])] 
        # take mean of sulfates col, ignore NA's
        my_mean <-mean(dat_subset[, "sulfate"], na.rm=TRUE)
        my_mean
}

# usage  
#pollutantmean ("specdata","sulfate",1:10)
#pollutantmean ("specdata","sulfate",70:72)
#pollutantmean ("specdata","sulfate",23)

