rm(list=ls())

###########################
##### Package install #####
###########################
install.packages("waveslim",repo="http://cran.nexr.com")
library(waveslim)

########################
##### Data loading #####
########################

setwd("C:/Users/user/Desktop/data_for_R/train/training_C/Acc")

#x1 <- read.csv("C_Velo_MTR_I_B_20110614.txt")
#x2 <- read.csv("C_Velo_MTR_I_B_20110914.txt")
#x3 <- read.csv("C_Velo_MTR_I_B_20111213.txt")
#x4 <- read.csv("C_Velo_MTR_I_B_20111228.txt")
#x5 <- read.csv("C_Velo_MTR_I_B_20120105.txt")
#x6 <- read.csv("C_Velo_MTR_I_B_20120118.txt")
#x7 <- read.csv("C_Velo_MTR_I_B_20120131.txt")
#x8 <- read.csv("C_Velo_MTR_I_B_20120306.txt")
#x9 <- read.csv("C_Velo_MTR_I_B_20120518.txt")
#x10 <- read.csv("C_Velo_MTR_I_B_20120530.txt")
#x11 <- read.csv("C_Velo_MTR_I_B_20120621.txt")
#x12 <- read.csv("C_Velo_MTR_I_B_20120726.txt")
#x13 <- read.csv("C_Velo_MTR_I_B_20120731.txt")
#x14 <- read.csv("C_Velo_MTR_I_B_20120924.txt")
#x15 <- read.csv("C_Velo_MTR_I_B_20120926.txt")
#x16 <- read.csv("C_Velo_MTR_I_B_20130118.txt")
#x17 <- read.csv("C_Velo_MTR_I_B_20130311.txt")
#x18 <- read.csv("C_Velo_MTR_I_B_20130612.txt")

x1 <- read.csv("C_Acc_Body_CASE_1_20110614_B.txt")
x2 <- read.csv("C_Acc_Body_CASE_1_20110914_B.txt")
x3 <- read.csv("C_Acc_Body_CASE_1_20111213_B.txt")
x4 <- read.csv("C_Acc_Body_CASE_1_20111228_B.txt")
x5 <- read.csv("C_Acc_Body_CASE_1_20120105_B.txt")
x6 <- read.csv("C_Acc_Body_CASE_1_20120118_B.txt")
x7 <- read.csv("C_Acc_Body_CASE_1_20120131_B.txt")
x8 <- read.csv("C_Acc_Body_CASE_1_20120306_B.txt")
x9 <- read.csv("C_Acc_Body_CASE_1_20120518_B.txt")
x10 <- read.csv("C_Acc_Body_CASE_1_20120530_B.txt")
x11 <- read.csv("C_Acc_Body_CASE_1_20120621_B.txt")
x12 <- read.csv("C_Acc_Body_CASE_1_20120726_B.txt")
x13 <- read.csv("C_Acc_Body_CASE_1_20120731_B.txt")
x14 <- read.csv("C_Acc_Body_CASE_1_20120924_B.txt")
x15 <- read.csv("C_Acc_Body_CASE_1_20120926_B.txt")
x16 <- read.csv("C_Acc_Body_CASE_1_20130118_B.txt")
x17 <- read.csv("C_Acc_Body_CASE_1_20130311_B.txt")
x18 <- read.csv("C_Acc_Body_CASE_1_20130612_B.txt")

########################
##### Plot #####
########################

#x1_plot <- as.numeric(unlist(read.csv("C_Acc_Body_CASE_1_20110614_B.txt")))
#timedata <- as.numeric(unlist(read.csv("Time.txt")))

#plot(0,0,xlim=c(min(timedata),max(timedata)), ylim=c(min(x1_plot),max(x1_plot)),xlab="time",ylab="sensor")

#lines(timedata,x1_plot,type="b",lty=1)

#points(timedata,x1_plot,pch=16)

############################################################################################################################
############################################################################################################################
############################################################################################################################
############################################################################################################################

level = 10

par(mfrow=c(5,4))
value1 <- Hurst(x1,level)
value2 <- Hurst(x2,level)
value3 <- Hurst(x3,level)
value4 <- Hurst(x4,level)
value5 <- Hurst(x5,level)
value6 <- Hurst(x6,level)
value7 <- Hurst(x7,level)
value8 <- Hurst(x8,level)
value9 <- Hurst(x9,level)
value10 <- Hurst(x10,level)
value11 <- Hurst(x11,level)
value12 <- Hurst(x12,level)
value13 <- Hurst(x13,level)
value14 <- Hurst(x14,level)
value15 <- Hurst(x15,level)
value16 <- Hurst(x16,level)
value17 <- Hurst(x17,level)
value18 <- Hurst(x18,level)

############################################################################################################################
############################################################################################################################
############################################################################################################################
############################################################################################################################

#colMeans(value1)

sink('C_hurstexp.csv')
write.table(value1,col.names = TRUE)
write.table(value2,col.names = TRUE)
write.table(value3,col.names = TRUE)
write.table(value4,col.names = TRUE)
write.table(value5,col.names = TRUE)
write.table(value6,col.names = TRUE)
write.table(value7,col.names = TRUE)
write.table(value8,col.names = TRUE)
write.table(value9,col.names = TRUE)
write.table(value10,col.names = TRUE)
write.table(value11,col.names = TRUE)
write.table(value12,col.names = TRUE)
write.table(value13,col.names = TRUE)
write.table(value14,col.names = TRUE)
write.table(value15,col.names = TRUE)
write.table(value16,col.names = TRUE)
write.table(value17,col.names = TRUE)
write.table(value18,col.names = TRUE)
sink()


