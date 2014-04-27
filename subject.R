# this function loads the subject data and adds a
# column name "Subject" to the load data

subject <- function(directory, data){
  
  subjectFile <- paste(directory,"/",data,"/subject_",data,".txt",sep="")
  
  subject <- read.table(subjectFile) 
  
  colnames(subject)[1] <- "Subject"
  
  subject
  
}