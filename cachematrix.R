## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The purpose of the function is to create a special object that 
## can cache its inverse. In this code the object is a matrix
makeCacheMatrix<- function ( m = matrix ()) {
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
## The goal of this function is to is to compute 
## omputes the inverse of the special "matrix" 
##returned by makeCacheMatrix function
cacheSolve <- function (x, ...) {
        m <- x$getInverse()
        ## provide the inverse if it exist or set
        if (!is.null(m)) {
                message("getting cached data")
                return (m)
        }
        ## Obtain the matrix as an object
        data<- x$get()
        ## solve the matrix inverse  
        m <-solve(data) 
        ## set the inverse as an object
        x$setInverse (m)
        ## return the values of the matrix
        m
}

