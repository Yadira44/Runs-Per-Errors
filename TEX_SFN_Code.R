# Code I Used To Gather Info.

# Part 1: Subset 2023 Texas Rangers Batteam & Errors

Texas_2023_Rangers <- subset(subset_2023_df, pitteam == "TEX")

Texas_2023_Rangers <- subset(Texas_2023_Rangers, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Part 2: Convert Runs and Errors to Numerical Variables

error_2023_cols <- Texas_2023_Rangers[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]

error_2023_cols_numeric <- as.data.frame(lapply(error_2023_cols, function(x) as.numeric(as.character(x))))

Texas_2023_Rangers$runs <- as.numeric(as.character(Texas_2023_Rangers$runs))

# Part 3: Gather Total Errors 

Texas_2023_errors <- sum(error_2023_cols_numeric, na.rm = TRUE)

Texas_2023_Rangers$total_errors <- sum(error_2023_cols_numeric, na.rm = TRUE)

# Part 4: Gather Total Runs

Texas_2023_runs <- sum(Texas_2023_Rangers$runs, na.rm = TRUE)

Texas_2023_Rangers$total_runs <- sum(Texas_2023_Rangers$runs, na.rm = TRUE)

# Part 5: Calculate Runs_Per_Errors

Texas_2023_Rangers$Runs_Per_Errors <- round((Texas_2023_runs/Texas_2023_errors)*100, 2)

Texas_2023_Rangers$Runs_Per_Errors<-paste(Texas_2023_Rangers$Runs_Per_Errors, "%")

---------------------------------------------------------------------------------------------------------------------

# Part 1: Subset 2023 San Francisco Giants Batteam & Errors 

SF_2023_Giants <- subset(subset_2023_df, batteam == "SFN")

SF_2023_Giants <- subset(SF_2023_Giants, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Part 2: Convert Runs and Errors to Numerical Variables

error_2023_cols <- SF_2023_Giants[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]

error_2023_cols_numeric <- as.data.frame(lapply(error_2023_cols, function(x) as.numeric(as.character(x))))

SF_2023_Giants$runs <- as.numeric(as.character(SF_2023_Giants$runs))

# Part 3: Gather Total Errors 

SF_2023_errors <- sum(error_2023_cols_numeric, na.rm = TRUE)

SF_2023_Giants$total_errors <- sum(error_2023_cols_numeric, na.rm = TRUE)

# Part 4: Gather Total Runs

SF_2023_runs <- sum(SF_2023_Giants$runs, na.rm = TRUE)

SF_2023_Giants$total_runs <- sum(SF_2023_Giants$runs, na.rm = TRUE)

# Part 5: Calculate Runs_Per_Errors

SF_2023_Giants$Runs_Per_Errors <- round((SF_2023_runs/SF_2023_errors)*100, 2)

SF_2023_Giants$Runs_Per_Errors<-paste(SF_2023_Giants$Runs_Per_Errors, "%")
