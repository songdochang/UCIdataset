library(dplyr)

activities <- read.table("./activity_labels.txt")

X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
y_train <- merge(y_train, activities)
subject_train <- read.table("./train/subject_train.txt")
train <- cbind(X_train, Activity = y_train[,2], Subject = subject_train[,1])

X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
y_test <- merge(y_test, activities)
subject_test <- read.table("./test/subject_test.txt")
names(subject_test) <- c("subject")
test <- cbind(X_test, Activity = y_test[,2], Subject = subject_test[,1])

combined <- rbind(train, test)

features <- read.table("./features.txt", stringsAsFactors = FALSE)
mean_columns <- grep("mean()", features[,2], fixed = TRUE)
std_columns <- grep("std()", features[,2], fixed = TRUE)
columns <- sort(c(mean_columns, std_columns))

data_set1 <- select(combined, c(columns, ncol(combined) - 1, ncol(combined)))

new_names <- c(features[columns,2], "activity", "subject")
new_names <- lapply(new_names, tolower)
new_names <- sub("tbody", "time-body", new_names)
new_names <- sub("fbody", "fourier-body", new_names)
new_names <- sub("tgravity", "time-gravity", new_names)
new_names <- sub("fgravity", "fourier-gravity", new_names)
new_names <- sub("bodyacc", "body-acc", new_names)
new_names <- sub("gravityacc", "gravity-acc", new_names)
new_names <- sub("accjerk", "acc-jerk", new_names)
new_names <- sub("bodygyro", "body-gyro", new_names)
new_names <- sub("gyrojerk", "gyro-jerk", new_names)
new_names <- sub("accmag", "acc-mag", new_names)
new_names <- sub("gyromag", "gyro-mag", new_names)
new_names <- sub("jerkmag", "jerk-mag", new_names)
names(data_set1) <- new_names

data_set2 <- summarize_all(group_by(data_set1, activity, subject), mean)
write.table(data_set2, row.names = FALSE, file = "tidy.txt")
