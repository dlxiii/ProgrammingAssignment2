## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  ## Initialize
  i <- NULL
  ## method: set the value of the matrix
  set <- function(matrix){
    x <<- matrix
    i <<- NULL
  }
  ## method: get the value of the matrix
  get <- function(){
    m
  }
  ## method: set the inverse value of the matrix
  setInverse <- function(inverse){
    i <<- inverse
  }
  ## method: get the inverse value of the matrix
  getInverse <- function(){
    i
  }
  ## method: return the list of methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already 
## been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
    }
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  m
}
