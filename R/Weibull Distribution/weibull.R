library(survival)
library(cmprsk)
setwd("C:/Users/user/Desktop/20170213_seminar")
chem<-read.csv("arr.csv",header=T)
attach(chem)
chem
nu = c(90, 50, 10)

#############################################################
#################### NON-PARAMETRIC DATA #################################
##########################################################################
##################  SURVIVAL DATA  ##############################
##########################################################################
##########################################################################
##################  KAPLAN-MEIER ESTIMATES  ##############################
##########################################################################
require(survival)
#create survival data
chem.sv_100<-Surv(chem$time, temp==100, type="right")
chem.sv_150<-Surv(chem$time, temp==150, type="right")
chem.sv_200<-Surv(chem$time, temp==200, type="right")

#fit survival data
chemSurv_100<-survfit(chem.sv_100~1, data=chem, type= "kaplan-meier")
chemSurv_150<-survfit(chem.sv_150~1, data=chem, type= "kaplan-meier")
chemSurv_200<-survfit(chem.sv_200~1, data=chem, type= "kaplan-meier")

summary(chemSurv_100)
summary(chemSurv_150)
summary(chemSurv_200)

plot(chemSurv_100 ,col=1,lty=1,lwd=2, conf.int="none", ylab="Probability", xlab="Time")
title("Kaplan-Maier Method Survival plot for all Temper")

lines(chemSurv_150, col=2,lty=2,lwd=2, conf.int="none")
lines(chemSurv_200, col=3,lty=3,lwd=2, conf.int="none")
leg.text=c("100C", "150C","200C")
legend(0,0.3,leg.text, col = 1:4,lty=1:4,lwd=2)


############   #############   #############   ##############   ##########
##################  CUMULATIVE FAILURE PLOT  ##############################
##########################################################################

chem.cmprsk<-cuminc(time, temp)
plot(chem.cmprsk, main="Cumulative Failure Plot", xlab="Time", lty=2:4, lwd=2, col=2:4, curvlab=c("Temp 100C","Temp 150C","Temp 200C"))
curvlab=c("Temp 100C","Temp 150C","Temp 200C")

#############################################################
#################### PARAMETRIC DATA #################################
##########################################################################
############################   ###############   ############   #########
#########################################################################
###################  WEIBULL LIFE DISTRIBUTION   ########################
##########################################################################
## Generate a Weibull probability plot.
subset100<-subset(chem$time,temp==100 & cens>0)
subset150<-subset(chem$time,temp==150 & cens>0)
subset200<-subset(chem$time,temp==200 & cens>0)
p100<-ppoints(subset100)
p150<-ppoints(subset150)
p200<-ppoints(subset200)

cellp100 = -log(1-p100)
cellp150 = -log(1-p150)
cellp200 = -log(1-p200)

plot(c(subset100,subset150,subset200), c(cellp100,cellp150,cellp200), log="xy", pch=20, col="red",
     xlab="Hours", ylab="Cumulative Hazard", main="Probability Plot")

lines(subset100,cellp100, col="black")
lines(subset150,cellp150, col="red")
lines(subset200,cellp200, col="green")

legend('topleft', legend=c(100,150,200), lty=c(1,1,1),
       pch=c(20,1,15), cex=0.9, col=c('red','green','blue'))

## Estimate parameters for Weibull distribution.
yw100 = survreg(chem.sv_100 ~ 1, data = chem, dist="weibull")
summary(yw100)
yw150 = survreg(chem.sv_150 ~ 1, data = chem, dist="weibull")
summary(yw150)
yw200 = survreg(chem.sv_200 ~ 1, data = chem, dist="weibull")
summary(yw200)

## Estimate parameters for Exponential distribution.
ye100 = survreg(chem.sv_100 ~ 1, data = chem, dist="exponential")
summary(ye100)
ye150 = survreg(chem.sv_150 ~ 1, data = chem, dist="exponential")
summary(ye150)
ye200 = survreg(chem.sv_200 ~ 1, data = chem, dist="exponential")
summary(ye200)


###########################################################################################
############   ##############   #############   ###########   ##########   ###############
##########################################################################################
## Maximum likelihood estimates:
## For the Weibull model, survreg fits log(T) = log(eta) + (1/beta)*log(E)
## where E has an exponential distribution with mean 1
## eta = Characteristic life (Scale) 
## beta = Shape

etaHAT1 <- exp(coefficients(yw100)[1])
betaHAT1 <- 1/yw100$scale
signif(c(eta=etaHAT1, beta=betaHAT1), )

etaHAT2 <- exp(coefficients(yw150)[1])
betaHAT2 <- 1/yw150$scale
signif(c(eta=etaHAT2, beta=betaHAT2), )

etaHAT3 <- exp(coefficients(yw200)[1])
betaHAT3 <- 1/yw200$scale
signif(c(eta=etaHAT3, beta=betaHAT3), )

## Lifetime: expected value and standard deviation.
muHAT1 = etaHAT1 * gamma(1 + 1/betaHAT1)
sigmaHAT1 = etaHAT1 * sqrt(gamma(1+2/betaHAT1) - (gamma(1+1/betaHAT1))^2)
names(muHAT1) = names(sigmaHAT1) = names(betaHAT1) = names(etaHAT1) = NULL
signif(c(mu=muHAT1, sigma=sigmaHAT1), 6)

muHAT2 = etaHAT2 * gamma(1 + 1/betaHAT2)
sigmaHAT2 = etaHAT2 * sqrt(gamma(1+2/betaHAT2) - (gamma(1+1/betaHAT2))^2)
names(muHAT2) = names(sigmaHAT2) = names(betaHAT2) = names(etaHAT2) = NULL
signif(c(mu=muHAT2, sigma=sigmaHAT2), 6)

muHAT3 = etaHAT3 * gamma(1 + 1/betaHAT3)
sigmaHAT3 = etaHAT3 * sqrt(gamma(1+2/betaHAT3) - (gamma(1+1/betaHAT3))^2)
names(muHAT3) = names(sigmaHAT3) = names(betaHAT3) = names(etaHAT3) = NULL
signif(c(mu=muHAT3, sigma=sigmaHAT3), 6)

## Probability density of fitted model.
curve(dweibull(x, shape=betaHAT1, scale=etaHAT1),
      from=0, to=muHAT1+6*sigmaHAT1, col="blue",
      xlab="Hours", ylab="Probability Density")

curve(dweibull(x, shape=betaHAT2, scale=etaHAT2),
      from=0, to=muHAT2+6*sigmaHAT2, col="blue",
      xlab="Hours", ylab="Probability Density")

curve(dweibull(x, shape=betaHAT3, scale=etaHAT3),
      from=0, to=muHAT3+6*sigmaHAT3, col="blue",
      xlab="Hours", ylab="Probability Density")

#######################################################################
########  #########   ############   #######   #############   ########
########################################################################
## Apply ln function to cell data.
y1 = log(subset100)
y2 = log(subset150)
y3 = log(subset200)

## Generate lognormal probability plot using procedure from "PROBABILITY PLOTTING" 
pos1 = 1:length(subset100)
pos2 = 1:length(subset150)
pos3 = 1:length(subset200)
pos100 = (pos1-0.3)/(nu[1]+0.4)
pos150 = (pos2-0.3)/(nu[2]+0.4)
pos200 = (pos3-0.3)/(nu[3]+0.4)
x1 = qnorm(pos100)
x2 = qnorm(pos150)
x3 = qnorm(pos200)
temps<-unique(chem$temp)
tmp<-25

## Generate lognormal probability plot for each cell
## and plot the curves on the same plot.
plot(c(x1,x2,x3), c(y1,y2,y3), type="n", xlab="Theoretical Quantiles", ylab="ln Time",
     main="PROBABILITY PLOT OF TEMPERATURES")    
lines(x1,y1, col="blue")
lines(x2,y2, col="blue")
lines(x3,y3, col="blue")
## Compute Ao, the ln T50 estimate, and A1, the cell sigma estimate.
z1 = lsfit(x1,y1)
z2 = lsfit(x2,y2)
z3 = lsfit(x3,y3)

## Save intercepts from the three fits. 
YARRH = c(z1$coef[1], z2$coef[1], z3$coef[1])
YARRH

## Compute 11605/(temp+273.16) for three cell temperatures.
XARRH = 11605/(temps + 273.15)
XARRH

## Plot Arrhenius cell T50's.
plot(XARRH, YARRH, type="o", ylab="ln T50", xlab="11605/(t+273.16)",
     main="ARRHENIUS PLOT", pch=19, col="red")

## Fit linear model.
z = lm(YARRH~XARRH, 
       weights=c(length(subset100), length(subset150), length(subset200)))
coef(z)

names## Estimate A.
A = exp(z$coef[1]) 
names(A) <- NULL
A

## Estimate delta H.
dH = z$coef[2]
names(dH) <- NULL
dH

## Compute acceleration between 100 C and 200 C.
AF_100=exp(dH*11605*(1/(tmp+273.16) - 1/(temps[1]+273.16)))
AF_150=exp(dH*11605*(1/(tmp+273.16) - 1/(temps[2]+273.16)))
AF_200=exp(dH*11605*(1/(tmp+273.16) - 1/(temps[3]+273.16)))

AF_100
AF_150
AF_200
#rm(list=ls())

