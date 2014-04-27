## Load test and training data.
##
train1<-read.table("./cleardata/train/y_train.txt", header=F, col.names=c("ActivityID"))
train3<-read.table("./cleardata/train/subject_train.txt", header=F, col.names=c("SubjectID"))
train2<-read.table("./cleardata/train/x_train.txt")
test1<-read.table("./cleardata/test/y_test.txt", header=F, col.names=c("ActivityID"))
test3<-read.table("./cleardata/test/subject_test.txt", header=F, col.names=c("SubjectID"))
test2<-read.table("./cleardata/test/x_test.txt")

# Appropriately labels the data set with descriptive activity names
features <- read.table("./cleardata/features.txt", header=FALSE, sep="")
names(train2)<-features[,2]
names(test2)<-features[,2]

# merge test and training sets into one data set, including the activities
test<-cbind (test3,test1,test2)
train<-cbind (train3,train1,train2)
gad<-rbind(train, test)

 #  extract the mean and standard deviation 
asd1_mean<-sapply(gad,mean,na.rm=TRUE)
asd2_sd<-sapply(gad,sd,na.rm=TRUE)

#Uses descriptive activity names to name the activities in the data set
activities <- read.table("./cleardata/activity_labels.txt")
applyActivityLabel <- function(data) {
 activity_labels <- read.table("./cleardata/activity_labels.txt", header=F, as.is=T, col.names=c("ActivityID", "ActivityName"))
activity_labels$ActivityName <- as.factor(activity_labels$ActivityName)
data_labeled <- merge(data, activity_labels)
data_labeled
}

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
DT <- data.table(gad)
tidy<-DT[,lapply(.SD,mean),by="ActivityID,SubjectID"]
write.table(tidy, file = "tidy.txt")
