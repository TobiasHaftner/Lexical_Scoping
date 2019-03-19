## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {?get
        i <- NULL                                #no values in i
        
        get <- function() x                     #get the value of the matrix
        
        setinverse <- function(inverse)         #set the value of the inverse
                
                i <<- inverse
        
        getinverse <- function() i              #get the value of the inverse
        
        list(get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        i <- x$getinverse()       # computes the inverse of the matrix
        if (!is.null(i)) {        # If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
