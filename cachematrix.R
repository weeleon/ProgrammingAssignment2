## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      setMatrix <- function(y) {
            x <<- y
            i <<- NULL
      }
      getMatrix <- function() x #returns the matrix
      setInverse <- function(s) i <<- s #assign the inverse matrix to cache
      getInverse <- function() i #returns the inverse matrix
      list(setMatrix = setMatrix, getMatrix = getMatrix,
           setInverse = setInverse, getInverse = getInverse)
      #returns a list of available functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      
      i <- x$getInverse() #call the getInverse function to read the cache
      if (!is.null(i)) {
            message("using cached inverse")
            return(i) #the inverse exists, so just return the cached value
      }
      mymat <- x$getMatrix() #the cache is null, so read the matrix
      i <- solve(mymat, ...) #call 'solve' to compute the inverse
      x$setInverse(i) #save the inverse matrix
      i ## Return a matrix that is the inverse of 'x'
      
}
