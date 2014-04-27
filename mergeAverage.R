library(reshape2)

script.dir <- dirname(sys.frame(1)$ofile)
source(paste(script.dir,"/combineSAF.R",sep=""))
source(paste(script.dir,"/features.R",sep=""))

# this function is used to merge the data set from train and 
# test directory
mergeTrainTestData <- function(directory){
  train <- combineSAF(directory,"train")
  test <- combineSAF(directory,"test")
  merged <- rbind(train,test)
  merged
}


# this function is used to calculate 
# average of each variable for each activity and each subject
avgPerActivityandSubject <- function(data){
  data[,c(3:68)] <- sapply(data[,c(3:68)],as.numeric)
  md <- melt(data,id=c("Subject","Activity"))
  vv <- dcast(md,Subject+Activity~variable,mean)
  cn <- colnames(vv)
  acn <- lapply(cn[3:68],function(x)paste("Average",x,"each subject and activity",sep="-"))
  colnames(vv) <- c(cn[1:2],acn)
  vv
}