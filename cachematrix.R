## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
  set<-function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function()x
  setinv <- function(solve)inv<-solve
  getinv <- function()inv
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getmean()
  if(! is.null(inv)){
    message("getting cached matrix")
    return(m)
  }
  
  mat <- x$get()
  inv <- solve(mat)
  x$setinv(inv)
  inv
}
