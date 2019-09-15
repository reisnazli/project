#Read the data
online.data<- read.csv("data/OnlineNewsPopularity_3.csv")
online.data<-online.data[2:39645,2:61]
online.data<- as.matrix(online.data)

#Split data into train and test
num.of.folds<-3
splitdf <- function(dataframe, seed=NULL) {
  if (!is.null(seed)) set.seed(seed)
  index <- 1:nrow(dataframe)
  trainindex <- sample(index, trunc(length(index)/num.of.folds))
  trainset <- dataframe[trainindex, ]
  testset <- dataframe[-trainindex, ]
  list(trainset=trainset,testset=testset)
}
online.data.split<-splitdf(online.data)

# save the training and testing sets as data frames
training <- online.data.split$trainset
testing <- online.data.split$testset

#write data to folder
write(training,file=sprintf("training.dat"))
#fit model with train dataset
lm<-lm(shares~sum(online.data[,1:60]),data=online.data)
lm<-lm(shares~.,data=online.data)
online.model<-lm(shares ~ kw_avg_avg + LDA_02 + data_channel_is_world + is_weekend + data_channel_is_socmed + weekday_is_saturday + LDA_04 + data_channel_is_entertainment + data_channel_is_tech + kw_max_avg + weekday_is_sunday + LDA_00 + num_hrefs + global_subjectivity + kw_min_avg + global_sentiment_polarity + rate_negative_words + kw_min_min + title_subjectivity + LDA_01, data = online.data)

shares.forms<-data.frame(rep(1:length(online.data$shares)))