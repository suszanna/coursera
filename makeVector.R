# with 2 functions, create a special object that stores a numeric
# vector and caches its mean:

#make vector
# makeVector creates a special vector which is really a list containing
# a function todo:
        #set the value of the vector
        #get the value of the vector
        #set the value of the mean
        #get the value of the mean

makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

# this function calculates the mean of the special "vector" 
# created with the above function. However, it first checks to 
# see if the mean has already been calculated. If so, it gets 
# the mean from the cache and skips the computation. 
# Otherwise, it calculates the mean of the data and sets the 
# value of the mean in the cache via the setmean function.

cachemean <- function(x, ...) {
        m <- x$getmean()
        #if mean not NULL, it has already been calculated
        if(!is.null(m)) {
                message("getting cache data")
                return(m)
        }
        # mean needs to be calculated
        data <- x$get()
        m <- mean(data, ...)
        #set value o mean in cache via setmean function:
        x$setmean(m)
        m
}