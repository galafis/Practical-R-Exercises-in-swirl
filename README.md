# Getting and Cleaning Data Project

## Overview

This repository hosts the analysis scripts and documentation for the "Human Activity Recognition Using Smartphones" project, demonstrating the ability to acquire, clean, and produce a tidy data set for subsequent analysis.

## Repository Contents

- **run_analysis.R**: Primary R script that performs data merging, extraction of mean and standard deviation measurements, descriptive labeling, and creation of the final tidy data set.
- **CodeBook.md**: Comprehensive code book outlining each variable, data sources, transformations applied, and units of measurement.
- **README.md**: This document explaining repository structure and usage instructions.
- **UCI HAR Dataset/**: (http://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones)

## Prerequisites

Ensure the following are installed before running the analysis:

- R (>= 3.5)
- R packages:
  - `dplyr`
  - `data.table`

Install packages in R:
```r
install.packages(c("dplyr", "data.table"))
```

## Usage Instructions

1. **Download and Unzip Data**  
   ```bash
   wget https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   unzip "UCI HAR Dataset.zip"
   ```
2. **Set Up Script**  
   Place `run_analysis.R` in the directory above `UCI HAR Dataset/`.
3. **Run Analysis**  
   In R or RStudio, set the working directory and execute:
   ```r
   setwd("/path/to/your/project")
   source("run_analysis.R")
   ```
4. **View Output**  
   The script generates `tidy_data.txt` containing the final tidy data, with 180 observations (30 subjects × 6 activities).

## Analysis Workflow

The `run_analysis.R` script performs these steps:

1. **Merge Data Sets**: Reads and combines training and test data into a single data frame.
2. **Extract Measurements**: Filters only features representing mean() and std() measurements.
3. **Descriptive Activity Names**: Applies human-readable names to activity codes.
4. **Label Variables**: Cleans and expands variable names for clarity (e.g., `tBodyAcc-mean()-X` to `timeBodyAccelerometerMeanX`).
5. **Create Tidy Data**: Aggregates the data to compute the average of each variable for each subject and activity, producing an independent tidy data set.

## Output Details

- **tidy_data.txt**: Tab-delimited text file with the final tidy data. Each row corresponds to one subject-activity combination and each column represents the average value of a feature.

## Code Book

Refer to **CodeBook.md** for:

- Definitions and descriptions of all variables in the tidy data set.
- Information on data transformation and feature selection.
- Units of measurement and summary of variables.

## Author

**Gabriel Demetrios Lafis**

This repository contains original work by the author.
