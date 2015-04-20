## The following are functions called makeCacheMatrix and acheSolve
## which can cache and compute the inverse of a matrix

## This function creates a "matrix" object，then cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## function'makeCacheMatrix' compotes the inverse of the special
## "Matrix" reutrned by this function. If the inverse has been calculated, 
## and the matrix is still the same, then function'cacheSolve' can retrieve
## the inverse from the cache.

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    return(m)
}
        ## Return a matrix that is the inverse of 'x'
}
