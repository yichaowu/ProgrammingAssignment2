## To cache the inverse of a matrix 
## 

## to creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

	set <- function(y){
		x<<-y
		m<<-NULL
	}
	get <- function() x
	setinverse <- function(inverse) m<<-inverse
	getinverse <- function() m
	
	
	list(set = set, get = get, 
	setinverse = setinverse, getinverse = getinverse)

}


## If the inverse of matrix has been calucated, return the data in cache. otherwise calculate the inverse matrix

cacheSolve <- function(x, ...) {
	if(exists("i"))
	
	{n<- makeCacheMatrix(x)$getinverse()
	
	if(!is.null(n)){
		message("getting cached data")
		return(n)
	}
	}
	else{
	data<- makeCacheMatrix(x)$get()
	n<-solve(data, ...)
	makeCacheMatrix(x)$setinverse(n)
	i<<-1
	n}
}        

## Return a matrix that is the inverse of 'x'

