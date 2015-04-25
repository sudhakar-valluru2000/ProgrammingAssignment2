## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
        
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        
        # Test whether the input matrix is a Square and Invertible matrix
        check_square_matrix <- function (mat) class(try(solve(mat),silent=TRUE))=="matrix"
        
        # If its not an square invertible matrix, then Stop and exit.
        if (check_square_matrix(x) == FALSE)    {
                
                stop ("Its not a square invertible matrix ")
                
        }
        
        if (check_square_matrix(x) == TRUE)    {
                
                # For this matrix, inverse could be calculated, as it is square and invertible.
                #print ("For this matrix, inverse could be calculated, as it is invertible.")
                # Set the matrix in cache
                #x <<- 
                
                # Set the matrix inverse
                
               
                
                get <- function() x
                setmatrix <- function(solve) m<<- solve
                getmatrix <- function() m
                list(set = set, 
                     get = get,
                     setmatrix = setmatrix,
                     getmatrix = getmatrix)
                
                
        }
                
        

}


## Write a short comment describing this function

cacheSolve <- function(x = matrix(), ...) {
        
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getmatrix()
        
        if(!is.null(m)) {
                
                        message("getting cached data")
                        return(m)    
                        
               
                
        }
        #Else get matrix and inverse matrix
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
        
}
