setwd("E:/Tools & Technology/R/Coursera/Jonhs Hopkins/Week 2/New folder")

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    cache=NULL
    set = function(y) {
        x<<-y
        cache<<-NULL
    }
    
    get=function() x
    setMatrix=function(inverse) cache <<- inverse
    getInverse=function() cache
    
    list(set=set, get=get, setMatrix=setMatrix, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    cache=x$getInverse()
    if (!is.null(cache)) {
        message("Getting Cached Data!")
        return (cache)
    }
    cache=solve(x$get())
    x$setMatrix(cache)
    cache
    
}
