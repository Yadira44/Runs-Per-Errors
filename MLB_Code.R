# Code I Used To Gather Info

# Step 1 2019

df <- read.csv("/Users/Downloads/2019plays.csv")

# Step 2 2019

subset_2019_df <- df[, c("gid", "inning", "batteam", "pitteam", "batter", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "outs_pre", "outs_post", "br1_pre", "br2_pre", "br3_pre", "br1_post", "br2_post", "br3_post", "run_b", "run1", "run2", "run3", "prun1", "prun2", "prun3", "runs", "rbi", "er")]

# Step 3 2019

error_2019_rows_filtered <- subset(subset_2019_df, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Step 4 2019 (convert errors to numerical variables)

error_2019_cols <- error_2019_rows_filtered[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]
error_2019_cols_numeric <- as.data.frame(lapply(error_2019_cols, function(x) as.numeric(as.character(x))))

# Step 5 2019

total_2019_errors <- sum(error_2019_cols_numeric, na.rm = TRUE)
error_2019_rows_filtered$total_errors <- sum(error_2019_cols_numeric, na.rm = TRUE)

# Step 6 2019 (convert runs to numerical variables)

error_2019_rows_filtered$runs <- as.numeric(as.character(error_2019_rows_filtered$runs))

# Step 7 2019

total_2019_runs <- sum(error_2019_rows_filtered$runs, na.rm = TRUE)
error_2019_rows_filtered$total_runs <- sum(error_2019_rows_filtered$runs, na.rm = TRUE)

# Step 8 2019

error_2019_rows_filtered$Runs_Per_Errors <- round((total_2019_runs/total_2019_errors)*100, 2)
error_2019_rows_filtered$Runs_Per_Errors<-paste(error_2019_rows_filtered$Runs_Per_Errors, "%")

---------------------------------------------------------------------------------------------------------------------

# Step 1 2020

df <- read.csv("/Users/Downloads/2020plays.csv")

# Step 2 2020

subset_2020_df <- df[, c("gid", "inning", "batteam", "pitteam", "batter", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "outs_pre", "outs_post", "br1_pre", "br2_pre", "br3_pre", "br1_post", "br2_post", "br3_post", "run_b", "run1", "run2", "run3", "prun1", "prun2", "prun3", "runs", "rbi", "er")]

# Step 3 2020

error_2020_rows_filtered <- subset(subset_2020_df, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Step 4 2020 (convert errors to numerical variables)

error_2020_cols <- error_2020_rows_filtered[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]
error_2020_cols_numeric <- as.data.frame(lapply(error_2020_cols, function(x) as.numeric(as.character(x))))

# Step 5 2020

total_2020_errors <- sum(error_2020_cols_numeric, na.rm = TRUE)
error_2020_rows_filtered$total_errors <- sum(error_2020_cols_numeric, na.rm = TRUE)

# Step 6 2020 (convert runs to numerical variables)

error_2020_rows_filtered$runs <- as.numeric(as.character(error_2020_rows_filtered$runs))

# Step 7 2020

total_2020_runs <- sum(error_2020_rows_filtered$runs, na.rm = TRUE)
error_2020_rows_filtered$total_runs <- sum(error_2020_rows_filtered$runs, na.rm = TRUE)

# Step 8 2020

error_2020_rows_filtered$Runs_Per_Errors <- round((total_2020_runs/total_2020_errors)*100, 2)
error_2020_rows_filtered$Runs_Per_Errors<-paste(error_2020_rows_filtered$Runs_Per_Errors, "%")

---------------------------------------------------------------------------------------------------------------------

# Step 1 2021

df <- read.csv("/Users/Downloads/2021csvs/2021plays.csv")

# Step 2 2021

subset_2021_df <- df[, c("gid", "inning", "batteam", "pitteam", "batter", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "outs_pre", "outs_post", "br1_pre", "br2_pre", "br3_pre", "br1_post", "br2_post", "br3_post", "run_b", "run1", "run2", "run3", "prun1", "prun2", "prun3", "runs", "rbi", "er")]

# Step 3 2021

error_2021_rows_filtered <- subset(subset_2021_df, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Step 4 2021 (convert errors to numerical variables)

error_2021_cols <- error_2021_rows_filtered[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]
error_2021_cols_numeric <- as.data.frame(lapply(error_2021_cols, function(x) as.numeric(as.character(x))))

# Step 5 2021

total_2021_errors <- sum(error_2021_cols_numeric, na.rm = TRUE)
error_2021_rows_filtered$total_errors <- sum(error_2021_cols_numeric, na.rm = TRUE)

# Step 6 2021 (convert runs to numerical variables)

error_2021_rows_filtered$runs <- as.numeric(as.character(error_2021_rows_filtered$runs))

# Step 7 2021

total_2021_runs <- sum(error_2021_rows_filtered$runs, na.rm = TRUE)
error_2021_rows_filtered$total_runs <- sum(error_2021_rows_filtered$runs, na.rm = TRUE)

# Step 8 2021

error_2021_rows_filtered$Runs_Per_Errors <- round((total_2021_runs/total_2021_errors)*100, 2)
error_2021_rows_filtered$Runs_Per_Errors<-paste(error_2021_rows_filtered$Runs_Per_Errors, "%")

---------------------------------------------------------------------------------------------------------------------

# Step 1 2022

df <- read.csv("/Users/Downloads/2022csvs/2022plays.csv")

# Step 2 2022

subset_2022_df <- df[, c("gid", "inning", "batteam", "pitteam", "batter", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "outs_pre", "outs_post", "br1_pre", "br2_pre", "br3_pre", "br1_post", "br2_post", "br3_post", "run_b", "run1", "run2", "run3", "prun1", "prun2", "prun3", "runs", "rbi", "er")]

# Step 3 2022

error_2022_rows_filtered <- subset(subset_2022_df, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Step 4 2022 (convert errors to numerical variables)

error_2022_cols <- error_2022_rows_filtered[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]
error_2022_cols_numeric <- as.data.frame(lapply(error_2022_cols, function(x) as.numeric(as.character(x))))

# Step 5 2022

total_2022_errors <- sum(error_2022_cols_numeric, na.rm = TRUE)
error_2022_rows_filtered$total_errors <- sum(error_2022_cols_numeric, na.rm = TRUE)

# Step 6 2022 (convert runs to numerical variables)

error_2022_rows_filtered$runs <- as.numeric(as.character(error_2022_rows_filtered$runs))

# Step 7 2022

total_2022_runs <- sum(error_2022_rows_filtered$runs, na.rm = TRUE)
error_2022_rows_filtered$total_runs <- sum(error_2022_rows_filtered$runs, na.rm = TRUE)

# Step 8 2022

error_2022_rows_filtered$Runs_Per_Errors <- round((total_2022_runs/total_2022_errors)*100, 2)
error_2022_rows_filtered$Runs_Per_Errors<-paste(error_2022_rows_filtered$Runs_Per_Errors, "%")

---------------------------------------------------------------------------------------------------------------------

# Step 1 2023

df <- read.csv("/Users/Downloads/2023csvs/2023plays.csv")

# Step 2 2023

subset_2023_df <- df[, c("gid", "inning", "batteam", "pitteam", "batter", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "outs_pre", "outs_post", "br1_pre", "br2_pre", "br3_pre", "br1_post", "br2_post", "br3_post", "run_b", "run1", "run2", "run3", "prun1", "prun2", "prun3", "runs", "rbi", "er")]

# Step 3 2023

error_2023_rows_filtered <- subset(subset_2023_df, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Step 4 2023 (convert errors to numerical variables)

error_2023_cols <- error_2023_rows_filtered[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]
error_2023_cols_numeric <- as.data.frame(lapply(error_2023_cols, function(x) as.numeric(as.character(x))))

# Step 5 2023

total_2023_errors <- sum(error_2023_cols_numeric, na.rm = TRUE)
error_2023_rows_filtered$total_errors <- sum(error_2023_cols_numeric, na.rm = TRUE)

# Step 6 2023 (convert runs to numerical variables)

error_2023_rows_filtered$runs <- as.numeric(as.character(error_2023_rows_filtered$runs))

# Step 7 2023

total_2023_runs <- sum(error_2023_rows_filtered$runs, na.rm = TRUE)
error_2023_rows_filtered$total_runs <- sum(error_2023_rows_filtered$runs, na.rm = TRUE)

# Step 8 2023

error_2023_rows_filtered$Runs_Per_Errors <- round((total_2023_runs/total_2023_errors)*100, 2)
error_2023_rows_filtered$Runs_Per_Errors<-paste(error_2023_rows_filtered$Runs_Per_Errors, "%")

---------------------------------------------------------------------------------------------------------------------
# Step 1 2024

df <- read.csv("/Users/Downloads/2024csvs/2024plays.csv")

# Step 2 2024

subset_2024_df <- df[, c("gid", "inning", "batteam", "pitteam", "batter", "e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9", "outs_pre", "outs_post", "br1_pre", "br2_pre", "br3_pre", "br1_post", "br2_post", "br3_post", "run_b", "run1", "run2", "run3", "prun1", "prun2", "prun3", "runs", "rbi", "er")]

# Step 3 2024

error_2024_rows_filtered <- subset(subset_2024_df, e1 >= 1 | e2 >= 1 | e3 >= 1 | e4 >= 1 | e5 >= 1 | e6 >= 1 | e7 >= 1 | e8 >= 1 | e9 >= 1)

# Step 4 2024 (convert errors to numerical variables)

error_2024_cols <- error_2024_rows_filtered[, c("e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9")]
error_2024_cols_numeric <- as.data.frame(lapply(error_2024_cols, function(x) as.numeric(as.character(x))))

# Step 5 2024

total_2024_errors <- sum(error_2024_cols_numeric, na.rm = TRUE)
error_2024_rows_filtered$total_errors <- sum(error_2024_cols_numeric, na.rm = TRUE)

# Step 6 2024 (convert runs to numerical variables)

error_2024_rows_filtered$runs <- as.numeric(as.character(error_2024_rows_filtered$runs))

# Step 7 2024

total_2024_runs <- sum(error_2024_rows_filtered$runs, na.rm = TRUE)
error_2024_rows_filtered$total_runs <- sum(error_2024_rows_filtered$runs, na.rm = TRUE)

# Step 8 2024

error_2024_rows_filtered$Runs_Per_Errors <- round((total_2024_runs/total_2024_errors)*100, 2)
error_2024_rows_filtered$Runs_Per_Errors<-paste(error_2024_rows_filtered$Runs_Per_Errors, "%")

