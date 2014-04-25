## 1Merges the training and the test sets to create one data set.
##
train1<-read.table("./cleardata/train/y_train.txt", header=F, col.names=c("ActivityID"))
train3<-read.table("./cleardata/train/subject_train.txt", header=F, col.names=c("SubjectID"))
train2<-read.table("./cleardata/train/x_train.txt")
test1<-read.table("./cleardata/test/y_test.txt", header=F, col.names=c("ActivityID"))
test3<-read.table("./cleardata/test/subject_test.txt", header=F, col.names=c("SubjectID"))
test2<-read.table("./cleardata/test/x_test.txt")

features <- read.table("./cleardata/features.txt", header=FALSE, sep="")
names(train2)<-features[,2]
names(test2)<-features[,2]

test<-cbind (test3,test1,test2)
train<-cbind (train3,train1,train2)
gad<-rbind(train, test)

asd1<-apply(gad, 2, mean)
asd2<-apply(gad, 2, sd)

activities <- read.table("./cleardata/activity_labels.txt")
applyActivityLabel <- function(data) {
 activity_labels <- read.table("./cleardata/activity_labels.txt", header=F, as.is=T, col.names=c("ActivityID", "ActivityName"))
activity_labels$ActivityName <- as.factor(activity_labels$ActivityName)
data_labeled <- merge(data, activity_labels)
data_labeled
}
