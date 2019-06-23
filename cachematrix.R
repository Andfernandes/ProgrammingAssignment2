
#create aleatory matrix with size given
#puts the result in a cache, to be reused later
makeCacheMatrix <-function (x){
  d<<-NULL
  message("you must insert number of lines/col for a square matrix")
  dados<-rnorm(x^2)
  b<<-matrix (dados, x)
  print (b)
}


#calculate the inverse of the matrix created before saved in b
#function may be used after the use of function makeCacheMatrix
#puts the result in a cache, to be reused later
cacheSolve<-function (){
  message ("calculate the inverse of a pre created square matrix saved in b")
  message ("function cachesolve works without argument")
  if(!is.null(d)) {
    message("getting cached data")
    return(d)      
  }
  c<-solve(b)
  d<<-c
  print (d)}
