## Put comments here that give an overall description of what your
## functions do
## These functions help to create objects and cached functionality for larger equations
## This helps with overall performance on a more scalable level as programs get bigger

## Write a short comment describing this function
## The makeCacheMatrix creates an empty matrix and then stores the matrix passed
## into the function.  It sets the inverse as NULL and creates get and set functions

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function
## This function first gets the matrix then checks if the inverse is cached or not
## if it is NULL then it creates the inverse and returns it
cacheSolve <- function(x, ...) {
  
    i <- x$getinverse()
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
  
  
        ## Return a matrix that is the inverse of 'x'
}


