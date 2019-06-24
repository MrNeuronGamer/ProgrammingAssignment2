## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <- function(y) {
    x <<- y
    invrs <<- NULL 
  }
  get <- function() x
  setinvrs<- function(z) invrs <<- z
  getinvrs <- function() invrs
  list(set = set, get = get, setinvrs = setinvrs, getinvrs = getinvrs)
  
  ## This function creates special data type namely CacheMatrix that contains matrix itself and its inverse.
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invrs <- x$getinvrs()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  data <- x$get()
  invrs <- solve(data, ...)
  x$setinvrs(invrs)
  invrs
  
## This function checks out whether an object passed into it has already had its inverse inside, 
## if not -- determines its inverse and writes it into the object. 
}

