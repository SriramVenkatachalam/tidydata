test_data<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/test/X_test.txt",header = FALSE)
test_labels<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/test/y_test.txt",header = FALSE)
subject_test<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/test/subject_test.txt",header = FALSE)
master_test_set<-cbind(test_data,test_labels,subject_test)
train_data<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/train/X_train.txt",header = FALSE)
train_labels<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/train/y_train.txt",header = FALSE)
subject_train<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/train/subject_train.txt",header = FALSE)
master_train_set<-cbind(train_data,train_labels,subject_train)
merged_data<-rbind(master_test_set,master_train_set)
df_names<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/features.txt",header = FALSE)
names(merged_data)[1:561]<-as.character(df_names[,2])
names(merged_data)[562:563]<-c("label","subject")
mean_list<-grep("-mean()",names(merged_data),ignore.case = TRUE)
freq_mean_list<-grep("freq()",names(merged_data),ignore.case = TRUE)
reformed_mean<-setdiff(mean_list,freq_mean_list)
std_list<-grep("std()",names(merged_data),ignore.case = TRUE)
req_data<-merged_data[,c(reformed_mean,std_list)]

req_data$labels<-merged_data$label
req_data$subjects<-merged_data$subject
activity_labels<-read.table("C:/Users/Sriram V/Documents/R resource folder/UCI HAR Dataset/activity_labels.txt",header = FALSE)
colnames(activity_labels)<-c("labels","action")
req_data<-merge(req_data,activity_labels,by = "labels")
copy_req_data<-req_data
copy_req_data$labels<-NULL
library(reshape2)
melted_data<-melt(copy_req_data,id = c("subjects","action"))
casted_data<-dcast(melted_data,subjects+action~variable,mean)
write.table(casted_data,file = "D:/Academics/Data science lecture videos/Cleaning data/Project/tidy_data.txt",sep = "\t",row.names = FALSE)