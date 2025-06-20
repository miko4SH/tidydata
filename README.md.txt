Project Overview
This project demonstrates how to clean and process the UCI Human Activity Recognition Using Smartphones Dataset. The dataset contains accelerometer and gyroscope readings from a Samsung Galaxy S smartphone, recorded while 30 subjects performed six activities. The goal of the project is to create a tidy dataset that summarizes the mean and standard deviation of the sensor measurements for each subject and activity.

Dataset Description
The original dataset contains sensor measurements from 561 features (including mean and standard deviation values) across 6 activities (walking, sitting, etc.) and 30 subjects. The project focuses on cleaning and transforming the data to create a tidy dataset with the average of each measurement for each activity and each subject.

Files in this Project
[[[[run_analysis.R]]]]: R script to clean and process the data.

[[[CodeBook.md]]]]]: Describes the dataset, variables, and transformations.

[[[[[README.md]]]]]: This file, providing an overview of the project.

[[[tidy_data.txt]]: The final tidy dataset, containing averages of sensor measurements for each subject and activity.

How to Run the Analysis
1-Install dependencies:

        install.packages("dplyr")
        install.packages("tidyr")
        Download the Dataset:

2-Download the dataset:
	Download and extract the dataset from the UCI HAR Dataset link.

3-Run the script:

	Place the run_analysis.R script in the same directory as the dataset.

	Open RStudio (or another R environment) and run the script. It will generate a file called tidy_data.txt.

4-Output:

	The script produces tidy_data.txt, which contains the tidy dataset with averaged sensor measurements grouped by 		subject and activity.