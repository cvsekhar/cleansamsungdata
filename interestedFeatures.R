script.dir <- dirname(sys.frame(1)$ofile)

source(paste(script.dir,"/features.R",sep=""))

# this function loads the data set and extract the features based on the
# features returned by the features function

interestedFeatures <- function(directory,data){
  
  features <- features(directory)
    
  trainXFile <- paste(directory,"/",data,"/X_",data,".txt",sep="")
  
  trainX <- read.table(trainXFile,colClasses="character",na.strings = "NA",header=FALSE)
  
  trainX <-  trainX[,features$V1]
  
  colnames(trainX) <- features$V2
  
  trainX
  
}

