# README
---
***"run_analysis.R"*** contains all the tasks for this project.   

By reading the information in *"features.txt"* and *"activity_labels.txt"*, we can integrate all the data from the training and test sets. The generated data is saved as ***"my_dt.csv"***, it contains descriptions of activities and variables.   

With the `grepl()` function, we can filter out variables that contain only mean and standard deviation information. The generated data is saved as ***"mean_std.csv"***.   

With the `dplyr` package, we can group the data as required and find the mean value. The generated data is saved as ***"new_dt.csv"***.

***"CodeBook.md"*** contains information about the specific variables for which data has been generated.