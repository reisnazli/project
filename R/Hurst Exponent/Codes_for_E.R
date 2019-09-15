rm(list=ls())

###########################
##### Package install #####
###########################
install.packages("waveslim",repo="http://cran.nexr.com")
library(waveslim)

########################
##### Data loading #####
########################

setwd("C:/Users/user/Desktop/data2")

x1 <- read.csv("E_Acc_Body_CASE_1_20110614_B.txt")
x2 <- read.csv("E_Acc_Body_CASE_1_20110909_B.txt")
x3 <- read.csv("E_Acc_Body_CASE_1_20110914_B.txt")
x4 <- read.csv("E_Acc_Body_CASE_1_20111213_B.txt")
x5 <- read.csv("E_Acc_Body_CASE_1_20111228_B.txt")
x6 <- read.csv("E_Acc_Body_CASE_1_20120105_B.txt")
x7 <- read.csv("E_Acc_Body_CASE_1_20120118_B.txt")
x8 <- read.csv("E_Acc_Body_CASE_1_20120131_B.txt")
x9 <- read.csv("E_Acc_Body_CASE_1_20120306_B.txt")
x10 <- read.csv("E_Acc_Body_CASE_1_20120518_B.txt")
x11 <- read.csv("E_Acc_Body_CASE_1_20120530_B.txt")
x12 <- read.csv("E_Acc_Body_CASE_1_20120621_B.txt")
x13 <- read.csv("E_Acc_Body_CASE_1_20120712_B.txt")
x14 <- read.csv("E_Acc_Body_CASE_1_20120713_B.txt")
x15 <- read.csv("E_Acc_Body_CASE_1_20120731_B.txt")
x16 <- read.csv("E_Acc_Body_CASE_1_20120924_B.txt")
x17 <- read.csv("E_Acc_Body_CASE_1_20120926_B.txt")
x18 <- read.csv("E_Acc_Body_CASE_1_20130118_B.txt")
x19 <- read.csv("E_Acc_Body_CASE_1_20130311_B.txt")
x20 <- read.csv("E_Acc_Body_CASE_1_20130612_B.txt")
x21 <- read.csv("E_Acc_Body_CASE_1_20130731_B.txt")



########################
##########Plot ###########
########################

#x1_plot <- as.numeric(unlist(read.csv("E_Acc_Body_CASE_1_20110614_B.txt")))
#timedata <- as.numeric(unlist(read.csv("Time.txt")))

#plot(0,0,xlim=c(min(timedata),max(timedata)), ylim=c(min(x1_plot),max(x1_plot)),xlab="time",ylab="sensor")

#lines(timedata,x1_plot,type="b",lty=1)

#points(timedata,x1_plot,pch=16)

############################################################################################################################
############################################################################################################################
############################################################################################################################
############################################################################################################################

level = 10

par(mfrow=c(5,5))
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
value19 <- Hurst(x19,level)
value20 <- Hurst(x20,level)
value21 <- Hurst(x21,level)

#########

sink('E_hurstexp.csv')
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
write.table(value19,col.names = TRUE)
write.table(value20,col.names = TRUE)
write.table(value21,col.names = TRUE)
sink()


