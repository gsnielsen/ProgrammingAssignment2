## Put comments here that give an overall description of what your
## functions do
## The two functions create a matrix, store a matrix, recall a matrix and the inverse of the matrix from cache

## Write a short comment describing this function
## makeCacheMatrix creates a custom matrix that can run the functions set, get, setinverse and getinverse
## set caches the matrix, get recalls the matrix
## setinverse caches the inverse of the matrix and getinverse recalls the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setinverse <- function(solve) m <<- mean()
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse
       getinverse = getinverse)
}


## Write a short comment describing this function
## cacheSolve takes the matrix created in makeCacheMatrix and calculates the inverse matrix
## first it checks to see if the inverse calcuation has been created, if it has it recalls it
## from cache.  If not it performs the calculation and stores it in cache.

cacheSolve <- function(x, ...) {
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
## Return a matrix that is the inverse of 'x'
