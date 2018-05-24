## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
        item <- NULL
        
        ## function to create the matrix
        set <- function (matrix) {
                m <<- matrix
                item<<- NULL
        }
        
        ## obtain the matix (get)
        get <- function () {
                m
        }
        
        ## function to set the inverse the matrix
        
        setInverse <- function(inverse){
                item<<- inverse
        }
        
        ## obtain the inverse matrix (get)
        getInverse <-function () {
               
        ## return the value of item        
                 item
        }
        #Provide values on a list class
        list(set = set, get=get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        
        
        ## provide the inverse if it exist or set
        if (!is.null(m)) {
                message("getting cached data")
                return (m)
        }
        
        ## Obtain the matrix as an object
        data<- x$get()
        ## solve the matrix inverse  with matrix multiplication
        m <-solve(data) %*% data
        
        
        ## set the inverse as an object
        x$setInverse (m)
        
        ## return the values of the matrix
        m
}
