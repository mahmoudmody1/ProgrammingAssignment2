## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object, which is really a list 
## containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
#define cache i 
  i <<- NULL 
  
set <- function (y){
  
  x <<- y ##assign input matrix to x 
  i<<- NULL ## re-intialize i 
  
}

get <- function() x ##get matrix 

setInverse <- function(inverse) i <<- inverse ## set cached m to be equal to inverse of x 
getInverse <- function() i  ## get cached inverse of x
list( set = set , get = get , setInverse = setInverse , getInverse = getInverse)

}


## Write a short comment describing this function
## The following function calculates the inverse of the special "matrix" 
## created with the above function. it first checks to see if the inverse
## has already been caclulated. If so, it gets the inverse from the cache
## and skips the computation. Otherwise, it calculates the matrix inverse
## and sets the value of the inverse in the cache by  the (setInverse) function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ##first chech if inverse is cached 
  i <- x$getInverse()
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  
  data <- x$get() ## get matrix 
  i <- solve(data  , ...) ## solve used to get inverse 
  x$setInverse(i) ##
  i
  
  }
