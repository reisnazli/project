#Read the data
online.data<- read.csv("data/OnlineNewsPopularity_6.csv")

online.data2<- read.csv("data/OnlineNewsPopularity_7.csv")

#fit model with train dataset
online.data.lm<-lm(shares~.,data=online.data)
online.data2.lm<-lm(shares~.,data=online.data2)


#ANOVA TABLE
anova(online.data.lm)
summary(online.data.lm)

anova(online.data2.lm)
summary(online.data2.lm)

#Quadratic
lm.r = lm( shares ~ num_hrefs + data_channel_is_entertainment + kw_avg_avg +  weekday_is_saturday + LDA_00 + LDA_02 + LDA_04 + global_subjectivity+ I(num_hrefs^2 + data_channel_is_entertainment^2 + kw_avg_avg^2 + weekday_is_saturday^2 + LDA_00^2 +LDA_02^2 + LDA_04^2 + global_subjectivity^2),data=online.data2)
lm.r
anova(lm.r)
summary(lm.r)

#formula
formula(online.data2.lm)

#step(Select a suitable model by adding or dropping terms. The model with the smallest value of AIC)
step(online.data.lm)
model1<-step(online.data2.lm)
model1
step<-stepAIC(online.data2.lm,direction="both")
step$anova

#plot

layout(matrix(c(1,2,3,4),2,2))
plot(model1)


#Cross-validation

#Split data into train and test
num.of.folds<-0.8
splitdf <- function(dataframe, seed=NULL) {
  if (!is.null(seed)) set.seed(seed)
  index <- 1:nrow(dataframe)
  trainindex <- sample(index, trunc(length(index)*num.of.folds))
  trainset <- dataframe[trainindex, ]
  testset <- dataframe[-trainindex, ]
  list(trainset=trainset,testset=testset)
}
online.data.split<-splitdf(online.data)

# save the training and testing sets as data frames
training <- online.data.split$trainset
testing <- online.data.split$testset

#prediction
online.data.lm.predict<-lm(shares_trans~.,data=training)
shares.predict<-predict(online.data.lm.predict,testing)
shares.predict<-predict(online.model.predict,testing)
library(caret)
confusionMatrix(shares.predict$class, online.data$shares)
confusionMatrix()
