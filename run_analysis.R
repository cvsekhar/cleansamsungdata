script.dir <- dirname(sys.frame(1)$ofile)

source(paste(script.dir,"/mergeAverage.R",sep=""))

# this function takes a directory for the data set
#  1. extracts the features with mean and std from the features.txt
#  2. extracts the subjects from subjects.txt
#  3. extracts the activity from activity.txt and transforms 
#     meaningful activity names
#  4. extracts the interested feature columns from all the recorded
#     feature data
#  5. combines the subject, activity and feature to get the clean
#     data and write to a file named cleanmergeddata.txt
#  6. It calulates the average of each variable for each activity 
#     and each subject 
#  7. write the tidy data to a file named tidydata.txt

runAll <- function(directory="UCI HAR Dataset"){  
  
  m <- mergeTrainTestData(directory)  
  
  write.table(m, file="cleanmergeddata.txt",quote=FALSE,col.names=TRUE)
  
  t <- avgPerActivityandSubject(m)
  
  write.table(t, file="tidydata.txt",quote=FALSE,col.names=TRUE)
}
