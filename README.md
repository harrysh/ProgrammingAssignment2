#Readme.md for cachematrix.R implementation

This readme file explains how to use and implement the R script, cachematrix.R.

Lines beginning with the # symbol are comments. Furthermore, lines beginning with #> signify the output produced in response to the commands executed.


	#Steps:

	# Open the R script
	# replace the "filepath" with the directory in which the file is saved

source("filepath/cachematrix.R")

	# create a "square" matrix (because the program only handles square matrices)


	# create the matrix while calling makeCacheMatrix()

a <- makeCacheMatrix( matrix(c(5,7,10,11), nrow = 2, ncol = 2) );

summary(a);
	#>            Length Class  Mode    
	#> set        1      -none- function
	#> get        1      -none- function
	#> setinverse 1      -none- function
	#> getinverse 1      -none- function

a$get();
	#>      [,1] [,2]
	#> [1,]    5   10
	#> [2,]    7   11

cacheSolve(a)
	#> [,1]        [,2]
	#> [1,] -0.7333333  0.6666667
	#> [2,]  0.4666667 -0.3333333

	# the 2nd time we run the function,we get the cached value

cacheSolve(a)
	#> getting cached data
	#> [,1]        [,2]
	#> [1,] -0.7333333  0.6666667
	#> [2,]  0.4666667 -0.3333333

	# Alternatively, the matrix can also be created after calling the makeCacheMatrix function without arguments.

	# read the R script
	# replace the "filepath" with the directory in which the file is saved

source("filepath/cachematrix.R")

	# calling the makeCacheMatrix function without arguments

a <- makeCacheMatrix();
summary(a);
	#>            Length Class  Mode    
	#> set        1      -none- function
	#> get        1      -none- function
	#> setinverse 1      -none- function
	#> getinverse 1      -none- function

	# creating a square matrix

a$set( matrix(c(5,7,10,11), nrow = 2, ncol = 2) );
a$get();
	#>      [,1] [,2]
	#> [1,]    5   10
	#> [2,]    7   11

cacheSolve(a)
	#> [,1]        [,2]
	#> [1,] -0.7333333  0.6666667
	#> [2,]  0.4666667 -0.3333333

	# the 2nd time we run the function, we get the cached value

cacheSolve(a)
	#> getting cached data
	#> [,1]        [,2]
	#> [1,] -0.7333333  0.6666667
	#> [2,]  0.4666667 -0.3333333
