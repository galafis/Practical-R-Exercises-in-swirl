# Script to load and explore the Getting and Cleaning Data dataset

# Define the file path for the data file (space-delimited TXT format)
file_path <- "Getting and Cleaning Data.txt"

# Load the data into a data.frame
data_gc <- read.table(file_path, header = TRUE)

# Display the first rows of the dataset
print(head(data_gc))

# Display the structure of the data frame to inspect column types
str(data_gc)

# Provide a statistical summary of numeric columns
summary(data_gc)
