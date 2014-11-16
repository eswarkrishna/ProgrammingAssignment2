## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<-y
    m<- NULL
  }
  get <- function()x
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
  m<- solve(data)
  setInverseMatrix(m)
  m
}
