## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){## setter method
    x<<-y
    m<- NULL
  }
  get <- function()x## getter method
  setInverseMatrix <- function(inverseMatrix) m <<- inverseMatrix
  getInverseMatrix <- function()m
  list(set = set,get =get , setInverseMatrix=setInverseMatrix,getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- getInverseMatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- get()
  m<- solve(data) ## calculate the reverse and assign it back to the variable
  setInverseMatrix(m)
  m
}
