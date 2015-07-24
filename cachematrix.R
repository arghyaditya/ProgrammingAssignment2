## setwd("E:/Tools & Technology/R/Coursera/Jonhs Hopkins/Week 2/New folder")

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Functions (one function within the other function), 
## which creates a special "matrix" object that can cache its inverse.

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

## Takes the matrix created by makeCacheMatrix() function as input
## Checks the cache whether it is null or not and provides the result
## If the cache is not null then it returns the inverse matrix which is already stored
## If cache is null then it creates inverse matrix using solve() function

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
