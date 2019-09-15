#########################
##### Preprocessing #####
#########################

Preprocessing<-function(x,level){
  
  n<-(2^level)
  
  p<-floor(length(x)/n)
  
  value<-matrix(0,0,nrow=n,ncol=p)
  
  name<-c()
  
  for(i in 1:p){
    
    value[,i]<-x[(1+((i-1)*n)):(i*n)]
    
  }
  
  return(value)
  
}

