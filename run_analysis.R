library(dplyr)
# Gets features name.
colna <- read.table("dataset/features.txt", header = FALSE)[,2]
colna <- make.unique(colna, sep = "_")

# Merges train data.
y_tr <- read.table("dataset/train/y_train.txt", col.names = "label_y", header = FALSE)
X_tr <- read.table("dataset/train/X_train.txt", col.names = colna, check.names = F, header = FALSE)
subject_tr <- read.table("dataset/train/subject_train.txt", col.names = "subject", header = FALSE)
tr <- cbind(subject_tr, y_tr, X_tr)
tr$group <- "train"

# Merges test data.
y_te <- read.table("dataset/test/y_test.txt", col.names = "label_y", header = FALSE)
X_te <- read.table("dataset/test/X_test.txt", col.names = colna, check.names = F, header = FALSE)
subject_te <- read.table("dataset/test/subject_test.txt", col.names = "subject", header = FALSE)
te <- cbind(subject_te, y_te, X_te)
te$group <- "test"

# [1] Merges the training and the test sets to create one data set.
# [3] Uses descriptive activity names to name the activities in the data set.
my_dt <- rbind(tr, te)
my_dt$label_y[which(my_dt$label_y =='1')] <- 'WALKING'
my_dt$label_y[which(my_dt$label_y =='2')] <- 'WALKING_UPSTAIRS'
my_dt$label_y[which(my_dt$label_y =='3')] <- 'WALKING_DOWNSTAIRS'
my_dt$label_y[which(my_dt$label_y =='4')] <- 'SITTING'
my_dt$label_y[which(my_dt$label_y =='5')] <- 'STANDING'
my_dt$label_y[which(my_dt$label_y =='6')] <- 'LAYING'
write.csv(my_dt, file = "my_dt.csv")

# [2] Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std <- my_dt[, grepl("*mean()*|*std()*|subject|label_y|group", colnames(my_dt))]
write.csv(mean_std, file = "mean_std.csv")

# [4] Appropriately labels the data set with descriptive variable names.
# Finished in the previous steps.
mean_std

# [5] From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
new_dt <- select(mean_std, -group)
new_dt <- group_by(new_dt, subject, label_y)
new_dt <- summarize_all(new_dt, funs(mean))
write.csv(new_dt, file = "new_dt.csv")
