## Put comments here that give an overall description of what your
## functions do
## This function is written as part of Coursera R Programing Week 3 assignment
## There are two functions
## First function creates a special “matrix” object that can cache its inverse
## Second function computes the inverse of the “matrix” returned by first matrix.

## Write a short comment describing this function

## makeCacheMatrix function takes square invertible maatrix as input and 
## returns the list containing functions to set,get,setinverse & getinsverse the matrix.
##------------------Start of First Function-------------------##
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {

    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}
## ----------------End of First Function------------------## 

 
-## Write a short comment describing this function
## This function computes the inverse of the matrix returned by first function(makeCacheMatrix)
## If the inverse has already been calculated then below function will retrieve the inverse from the cache
##-------------------Start of Second Function---------------##
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()


  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
 
##------------------End of Second Function-----------------##
