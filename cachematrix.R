## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "matrix" containing a function to 

## 1. set the value of the matrix

## 2. get the value of the matrix

## 3. set the value of the inverse matrix

## 4. get the value of the inverse matrix



makeCacheMatrix <- function(x = matrix()) {

        r <- NULL

        set <- function(y) {

          x <<- y

          r <<- NULL

        }

        get <- function() x

        setsolve <- function(solve) r <<- solve

        getsolve <- function() r

        list (set = set, get = get, 

              setsolve = setsolve,

              getsolve = getsolve)

}



## cacheSolve calculates the inverse of the matrix created by makeCacheMatrix but  

## checks first to see if the matrix inverse has already been calculated and, if so,

## reads the cached inverse matrix and bypasses the computation. If the inverse 

## matrix does not exist, it is calculated and saved to cache via the setsolve function.  



cacheSolve <- function(x, ...) {

        

      r <- x$getsolve()

        if(!is.null(r)) {

          message("getting cached data")

          return(r)

        }

        data <- x$get()

        r <- solve(data, ...)

        x$setsolve(r)

        r

}




