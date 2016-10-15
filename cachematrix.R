## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function is creating an object that is matrix class and its empty, after that it 
## sets and caculate the inverse of that matrix objet and the gets it saved in the memory

makeCacheMatrix <- function(x = matrix()) {
                i <- NULL
                set <- function(y) {
                  x <<- y
                  i <<- NULL
                }
                get <- function() x
                setinverse <- function(solve) i <<- solve
                getinverse <- function() i
                list(set = set, get = get,
                     setinverse = setinverse,
                     getinverse = getinverse)

}


## Write a short comment describing this function

## now this function is taking the matrix created previously and calculates the inverse
## but first, it cheks if the matrix has been calculated before, if has been, it take
## from the memory that calculation 

cacheSolve <- function(x, ...) {
  
            i<- x$getinverse()
            if(!is.null(i)) {
              message ("getting cached data")
              return (i)
            }
            
            data <- x$get()
            m <- solve(data, ...)
            x$setinverse(i)
            i
        ## Return a matrix that is the inverse of 'x'
}
