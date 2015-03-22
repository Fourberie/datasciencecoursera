run_analysis <- function()
{
	train <- read.table("./UCI HAR Dataset/train/X_train.txt")
	test <- read.table("./UCI HAR Dataset/test/X_test.txt")
	ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
	strain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
	#train$V562 = ytrain
	#train$V563 = strain
	ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
	stest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
	#test$V562 = ytest
	#test$V563 = stest
	mer <- rbind(train,test)
	p <- c("tBodyAcc-mean()-X" = 1, "tBodyAcc-mean()-Y" = 2, "tBodyAcc-mean()-Z" = 3,
	"tBodyAcc-std()-X" = 4, "tBodyAcc-std()-Y" = 5, "tBodyAcc-std()-Z" = 6,
	"tGravityAcc-mean()-X" = 41, "tGravityAcc-mean()-Y" = 42, "tGravityAcc-mean()-Z" = 43,
	"tGravityAcc-std()-X" = 44, "tGravityAcc-std()-Y" = 45, "tGravityAcc-std()-Z" = 46,
	"tBodyAccJerk-mean()-X" = 81, "tBodyAccJerk-mean()-Y" = 82, "tBodyAccJerk-mean()-Z" = 83,
	"tBodyAccJerk-std()-X" = 84, "tBodyAccJerk-std()-Y" = 85, "tBodyAccJerk-std()-Z" = 86,
	"tBodyGyro-mean()-X" = 121, "tBodyGyro-mean()-Y" = 122, "tBodyGyro-mean()-Z" = 123,
	"tBodyGyro-std()-X" = 124, "tBodyGyro-std()-Y" = 125, "tBodyGyro-std()-Z" = 126,
	"tBodyGyroJerk-mean()-X" = 161, "tBodyGyroJerk-mean()-Y" = 162, "tBodyGyroJerk-mean()-Z" = 163,
	"tBodyGyroJerk-std()-X" = 164, "tBodyGyroJerk-std()-Y" = 165, "tBodyGyroJerk-std()-Z" = 166,
	"tBodyAccMag-mean()" = 201, "tBodyAccMag-std()" = 202, 
	"tGravityAccMag-mean()" = 214, "tGravityAccMag-std()" = 215, 
	"tBodyAccJerkMag-mean()" = 227, "tBodyAccJerkMag-std()" = 228,
	"tBodyGyroMag-mean()" = 240, "tBodyGyroMag-std()" = 241,
	"tBodyGyroJerkMag-mean()" = 253, "tBodyGyroJerkMag-std()" = 254,
	"fBodyAcc-mean()-X" = 266, "fBodyAcc-mean()-Y" = 267, "fBodyAcc-mean()-Z" = 268,
	"fBodyAcc-std()-X" = 269, "fBodyAcc-std()-Y" = 270, "fBodyAcc-std()-Z" = 271,
	"fBodyAccJerk-mean()-X" = 345, "fBodyAccJerk-mean()-Y" = 346, "fBodyAccJerk-mean()-Z" = 347,
	"fBodyAccJerk-std()-X" = 348, "fBodyAccJerk-std()-Y" = 349, "fBodyAccJerk-std()-Z" = 350,
	"fBodyGyro-mean()-X" = 424, "fBodyGyro-mean()-Y" = 425, "fBodyGyro-mean()-Z" = 426,
	"fBodyGyro-std()-X" = 427, "fBodyGyro-std()-Y" = 428, "fBodyGyro-std()-Z" = 429,
	"fBodyAccMag-mean()" = 503, "fBodyAccMag-std()" = 504,
	"fBodyBodyAccJerkMag-mean()" = 516, "fBodyBodyAccJerkMag-std()" = 517,
	"fBodyBodyGyroMag-mean()" = 529, "fBodyBodyGyroMag-std()" = 530,
	"fBodyBodyGyroJerkMag-mean()" = 542, "fBodyBodyGyroJerkMag-std()" = 543)
	
	m <- mer[p]
	per <- colMeans(m)
	write.table(per,file="./ans.txt",row.name=FALSE)
}
