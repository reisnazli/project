
##########################
##### Hurst Exponent #####
##########################

Hurst <- function(x,level){
  
  xx <- Preprocessing(x,level)
  
  value <- list()
  
  value <- matrix(0,0,nrow=ncol(xx),ncol=4)
  
  plot_data <- matrix(0,0,nrow=(level-1),ncol=ncol(xx))	
  
  dimnames(value)[[2]] <- c("slope","intercept","hurst exponent", "standard error")
  
  for(i in 1:(ncol(xx))){
    
    temp <- dwt(xx[,i], "haar", level)
    
    y_axis <- c()
    
    for(j in ((level-1):1)){
      
      ii <- eval(parse(text=paste("temp$d",j,"",sep="")))
      
      y_axis[length(y_axis)+1] <- log2(mean(ii^2))
      
    }
    
    x_axis <- 1:(level-1)
    
    plot_data[,i] <- y_axis
    
    reg <- lm(y_axis ~ x_axis)
    #2:6 resolution
    #reg <- lm(y_axis[2:6] ~ x_axis[2:6]) 
    #3:5 resolution
    #reg <-lm(y_axis[3:5] ~ x_axis[3:5])
    #2:7 resolution
    #reg <- lm(y_axis[2:7] ~ x_axis[2:7]) 
    #3:6 resolution
    #reg <-lm(y_axis[3:6] ~ x_axis[3:6])
    #2:8 resolution
    #reg <- lm(y_axis[2:8] ~ x_axis[2:8]) 
    #3:7 resolution
    #reg <-lm(y_axis[3:7] ~ x_axis[3:7])
    #2:11 resolution
    #reg <- lm(y_axis[2:12] ~ x_axis[2:12]) 
    #3:10 resolution
    #reg <-lm(y_axis[2:10] ~ x_axis[2:10])
    
    
    
    coeff <- reg$coefficients
    
    value[i,] <- c(coeff[2], coeff[1], (-coeff[2]-1)/2, summary(reg)$sigma)
    
  }
  
  plot(0,0,xlim=c(min(x_axis),max(x_axis)), ylim=c(min(plot_data),max(plot_data)),xlab="resolution level",ylab="wavelet spectrum")
  
  apply(plot_data,2,function(x) lines(x_axis,x,type="b",lty=1))
  
  apply(plot_data,2,function(x) points(x_axis,x,pch=16))
  
  return(round(value,4))
  
}
