# this function loads the activity_labels and forms a basis of activity 
# lookup

activity_label_lookup <- function(directory){
  
  activity_label_lookup_file <- paste(directory,"/","activity_labels.txt",sep="")
  
  activity_label_lookup <- read.table(activity_label_lookup_file,sep=" ")
  
  activity_label_lookup
}

# this function loads the activity data and converts them to description
# based on the lookup table constructed from activity_labels

activity <- function(directory,data,activity_lookup){
  
  recorded_activity_file <- paste(directory,"/",data,"/y_",data,".txt",sep="")
  
  recorded_activity <- read.table(recorded_activity_file)
  
  a <- apply(recorded_activity,1,function(x) activity_lookup[activity_lookup$V1==x[1],c(2)])  
  
  a
}