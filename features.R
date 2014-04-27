# this function takes a directory and loads the features.txt file
# from the directory and selects rows which have the names mean and std in
# rows of the loaded features.txt file

features <-  function(directory) {
  
  featuresFileName <- paste(directory,"/","features.txt",sep="")
  
  features <- read.table(featuresFileName,sep=" ")  
  
  features <- features[grep("*-mean\\(\\)*|*-std\\(\\)*",features$V2),]  
  
  features
  
}