# Read and join the X data
Xdata <- rbind(read.table("./UCI HAR Dataset/train/X_train.txt"), read.table("./UCI HAR Dataset/test/X_test.txt"))

#name the data columns
features <- read.table("./UCI HAR Dataset/features.txt")
names(Xdata) = features[[2]]

# Identify the mean and STD data and remove the rest
means <- grep("mean",features[[2]])
stds <- grep("std",features[[2]])
extract <- unique(c(means,stds)) ## Uses unique to remove any duplicates
rm(means, stds)
Xdata <- Xdata[extract]

# Read and join the activity ID#s
activities <- rbind(read.table("./UCI HAR Dataset/train/y_train.txt"), read.table("./UCI HAR Dataset/test/y_test.txt"))
names(activities) = "activity_#"
Xdata$"activity_#" = activities[[1]]

#Read and join the subjects
subjects <- rbind(read.table("./UCI HAR Dataset/train/subject_train.txt"), read.table("./UCI HAR Dataset/test/subject_test.txt"))
names(subjects) = "subjects"
Xdata$subject = subjects[[1]]

# Read the activity labels and add full names to data
labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(labels) = c("activity_#", "activity")
Xdata <- merge(Xdata, labels,"activity_#")
Xdata$"activity_#" <- NULL

# Clean up column names
names(Xdata) <- gsub("\\(\\)","",names(Xdata))
names(Xdata) <- gsub("std","Std",names(Xdata))
names(Xdata) <- gsub("mean","Mean",names(Xdata))
names(Xdata) <- gsub("-","",names(Xdata))

# Create the summary data set
summary <- aggregate(Xdata, by=list(Activity = Xdata$activity, Subject=Xdata$subject), mean)
summary$activity <- NULL
summary$subject <- NULL

# write to file
write.table(Xdata, "clean_data.txt")
write.table(summary,"summary.txt",row.name=FALSE)
