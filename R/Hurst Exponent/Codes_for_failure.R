rm(list=ls())

###########################
##### Package install #####
###########################
install.packages("waveslim",repo="http://cran.nexr.com")
library(waveslim)


########################
##### Data loading #####
########################

setwd("C:/Users/user/Desktop/pulverizer_data/failure")

x1 <- read.csv("Fail1_Acc__Body_CASE_1_B.txt")
x2 <- read.csv("Fail2_Acc_Body_CASE_1_B.txt")


#x3 <- read.csv("Fail1_Acc_MTR_I_B.txt")
#x4 <- read.csv("Fail2_Acc_MTR_I_B.txt")

#x5 <- read.csv("Fail1_Velo_Body_CASE_1_B.txt")
#x6 <- read.csv("Fail2_Velo_Body_CASE_1_B.txt")

#x7 <- read.csv("Fail1_Velo_MTR_I_B.txt")
#x8 <- read.csv("Fail2_Velo_MTR_I_B.txt")

#####Plot
#x1_plot <- as.numeric(unlist(read.csv("Fail1_Acc__Body_CASE_1_B.txt")))
#timedata <- as.numeric(unlist(read.csv("Time.txt")))

#plot(0,0,xlim=c(min(timedata),max(timedata)), ylim=c(min(x1_plot),max(x1_plot)),xlab="time",ylab="sensor")

#lines(timedata,x1_plot,type="b",lty=1)

#points(timedata,x1_plot,pch=16)

#x2_plot <- as.numeric(unlist(read.csv("Fail1_Velo_Body_CASE_1-B.txt")))
#timedata <- as.numeric(unlist(read.csv("Time.txt")))

#plot(0,0,xlim=c(min(timedata),max(timedata)), ylim=c(min(x1_plot),max(x1_plot)),xlab="time",ylab="sensor")

#lines(timedata,x1_plot,type="b",lty=1)

#points(timedata,x1_plot,pch=16)

############################################################################################################################
############################################################################################################################
############################################################################################################################
############################################################################################################################
#######
level = 10

par(mfrow=c(2,1))
value1 <- Hurst(x1,level)
value2 <- Hurst(x2,level)

#value3 <- Hurst(x3,level)
#value4 <- Hurst(x4,level)

#value5 <- Hurst(x5,level)
#value6 <- Hurst(x6,level)

#value7 <- Hurst(x7,level)
#value8 <- Hurst(x8,level)

#########

sink('Fail_hurstexp.csv')
write.table(value1,col.names = TRUE)
write.table(value2,col.names = TRUE)
sink()


