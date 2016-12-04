Getting and Cleaning Data Course Project

This repo contains the following files:
1 - this README.md file
2 - CODEBOOK.md 	- this is the codebook for the tidyDataGrouped.txt data file. 
 
3 - run_analysis.R	- the R script which creates the data file, tidyDataGrouped.txt.
This script executes the 5 tasks listed in the project requirements.  It also contains the code to download and unzip
the source data files.
The script creates 2 dataframes: 1) mergedData, which is the tidy data resulting from steps 1-4, and 2) groupedData, which
is the independent tidy dataset for task number 5.  This dataframe is written to a file with the name tidyDataGrouped.txt.

4 - tidyDataGrouped.txt - output data file