
setwd("C:/Users/Nigga/Desktop/New folder/getdata_projectfiles_UCI HAR Dataset")


library(dplyr)
library(tidyr)


features <- read.table("UCI HAR Dataset/features.txt", col.names = c("index", "feature"))
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityId", "activityLabel"))


X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")


X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


X_data <- rbind(X_train, X_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)


mean_std_columns <- grep("mean\\(\\)|std\\(\\)", features$feature)
X_data <- X_data[, mean_std_columns]


colnames(X_data) <- features$feature[mean_std_columns]


y_data <- merge(y_data, activity_labels, by.x = "V1", by.y = "activityId", all.x = TRUE)
colnames(y_data) <- c("activityId", "activityLabel")


final_data <- cbind(subject_data, y_data$activityLabel, X_data)
colnames(final_data)[1:2] <- c("subject", "activity")


tidy_data <- final_data %>%
  group_by(subject, activity) %>%
  summarise_all(list(mean = ~mean(.)))


write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

