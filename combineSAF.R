script.dir <- dirname(sys.frame(1)$ofile)
source(paste(script.dir,"/subject.R",sep=""))
source(paste(script.dir,"/activity.R",sep=""))
source(paste(script.dir,"/interestedFeatures.R",sep=""))

# this function combines the subject, activity and the features data set 
# into one data set with subject,activity and the interested feature
# column names
combineSAF <- function(directory,data){   
  subject <- subject(directory,data)
  activity_lookup <- activity_label_lookup(directory)
  a <-  activity(directory,data,activity_lookup)
  interestedFeatures <-  interestedFeatures(directory,data)
  csa <- merge(subject,a,by="row.names",all.x=T)
  csa <- csa[,c(2,3)]
  colnames(csa)[2] <- "Activity"
  finalFeatures <- merge(csa,interestedFeatures,by="row.names",all.x=T)
  finalFeatures <- finalFeatures[,-c(1)]
  finalFeatures
}

