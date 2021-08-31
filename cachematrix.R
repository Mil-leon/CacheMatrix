## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # create a matrix that can cache inverse
        inv <- NULL
        # create get, set, inverse functions 
        set <- function(y)
        {
                x <<- y 
                inv <<- NULL
        }
        get <- function () x # gets the matrix
        setinverse <- function (inverse) inv <<- inverse
        getinverse <- function() inv
        
        list(set = set, get = get, 
             setinverse = setinverse, getinverse = getinverse )
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        #get inverse 
        inv <- x$getinverse()
        #if inverse is not null retrieve the cached data
        if(!is.null(inv))
        {
                message("Getting Inverse")
                return(inv)
                
        }
        #retrieve data to inverse it using solve
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        #return the inversed matrix
        inv
        
        ## Return a matrix that is the inverse of 'x'
}