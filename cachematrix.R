	# See README.md for instructions on how to run the code and get output from it

	# makeCacheMatrix is a function that contains a list of functions
	# The puspose of makeCacheMatrix is to store a matrix and a cached value of the inverse of the 
	# matrix. It contains the following functions:
	# * set      	   set the value of a matrix
	# * get      	   get the value of a matrix
	# * setInverse     get the cahced value (inverse of the matrix)
	# * getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {

	# holds the cached value or NULL if nothing is cached
        # initially nothing is cached so set i to NULL

    i <- NULL

	# stores a matrix

    set <- function(y) {
        x <<- y

	# since the matrix is assigned a new value, we will flush i

        i <<- NULL
    }

	# returns the stored matrix

    get <- function() x

	# cache the given argument

    setinverse <- function(inv) i <<- inv

	# get the cached value

    getinverse <- function() i

	# return a list. Each named element of the list is a function

    list(
        set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )
}


## This function calculates the inverse of the special "matrix" created with the above
## function, and reuses the cached result if it is available

cacheSolve <- function(x, ...) {

	# get the cached value

    i <- x$getinverse()

	# if a cached value exists return it

    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }

	# otherwise get the matrix, caclulate the inverse and store it in the cache

    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)

	# return the inverse

    i
}
