# UCIdataset

Following is the line-by-line explanation of the scripts.  Please note the numbers are line numbers in the 'run_analysis.R' file.

1: This script requires dplyr to run.
3: Read the activity names.
5-6: Read X_train and y_train files,
7: Merge to include activity names.
8: Get subjects.
9: Combine X_train and y_train to have single train file.

11- 16: Repeat previous steps for test data.

18: Merge the training and the test sets.

20: Read feature names.
21: Get the feature columns that contains "mean()".
22: Get the feature columns that contains "std()".
23: Combine previous column indices and sort.

25: Get the data set for the mean and standard deviation columns together with the activities and the subjects.

27: Get the name of the columns.
28: Change to lower case.
29-40: Try to make more descriptive names.
41: Assign new names.

43: Create data set with the average of each variable for each activity and each subject.
44: Create a text file for the tidy data set.
