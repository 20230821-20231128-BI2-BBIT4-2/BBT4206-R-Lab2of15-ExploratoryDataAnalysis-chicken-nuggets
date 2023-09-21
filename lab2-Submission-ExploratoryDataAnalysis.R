
#  summary statistics for 'study_time' 
study_summary <- summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, na.rm = TRUE)
cat("Summary Statistics for study_time (n =", nrow(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset), "):\n")
cat("Mean:", mean(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, na.rm = TRUE), "\n")
cat("Median:", median(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, na.rm = TRUE), "\n")
cat("Standard Deviation:", sd(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, na.rm = TRUE), "\n")
cat("Minimum:", min(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, na.rm = TRUE), "\n")
cat("Maximum:", max(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, na.rm = TRUE), "\n")



#  summary statistics for 'exercise_per_week' 
exercise_summary <- summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$exercise_per_week, na.rm = TRUE)
cat("Summary Statistics for exercise_per_week (n =", nrow(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset), "):\n")
cat("Mean:", mean(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$exercise_per_week, na.rm = TRUE), "\n")
cat("Median:", median(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$exercise_per_week, na.rm = TRUE), "\n")
cat("Standard Deviation:", sd(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$exercise_per_week, na.rm = TRUE), "\n")
cat("Minimum:", min(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$exercise_per_week, na.rm = TRUE), "\n")
cat("Maximum:", max(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$exercise_per_week, na.rm = TRUE), "\n")



# a histogram for 'study_time'
hist(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$study_time, main = "Histogram of Study Time",
     xlab = "Study Time", ylab = "Frequency")

#  a bar plot for 'gender'
barplot(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender), main = "Bar Plot of Gender",
        xlab = "Gender", ylab = "Count", col = "pink")

#heatmap
library(ggplot2)

# Select the numeric variables for correlation analysis
numeric_variables <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[c(
  "absentism_percentage", "coursework", "exam"
)]

#  correlation matrix
correlation_matrix <- cor(numeric_variables)

# Create a heatmap of the correlation matrix
heatmap(correlation_matrix, 
        col = colorRampPalette(c("red", "blue", "pink"))(100),  # Define colors
        main = "Correlation Heatmap",
        xlab = "Variables",
        ylab = "Variables",
        cex.main = 0.5)  

# Add annotations manually to the heatmap
text(1:nrow(correlation_matrix), 1:ncol(correlation_matrix), round(correlation_matrix, 2), col = "black")




# cross-tabulation table
cross_table <- table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender, 
                     X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$motivator)

# Convert the cross-tabulation table to a formatted table
formatted_table <- as.data.frame(ftable(cross_table))

# Rename the columns for clarity
colnames(formatted_table) <- c("Gender", "Motivator", "Count")

# Print the formatted table
print(formatted_table)

