# Sample data
data <- c(12, 15, 20, 22, 18, 15, 15, 17, 19, 22, 24)

# 1. Mean
mean_value <- mean(data)
cat("Mean of the data:\n", mean_value, "\n\n")

# 2. Median
median_value <- median(data)
cat("Median of the data:\n", median_value, "\n\n")

# 3. Mode
# Defining a custom function to calculate mode
calculate_mode <- function(x) {
  freq_table <- table(x)  # Frequency of each value
  mode_values <- as.numeric(names(freq_table[freq_table == max(freq_table)]))
  return(mode_values)
}

mode_value <- calculate_mode(data)
cat("Mode of the data:\n", mode_value, "\n\n")

# 4. Variance
variance_value <- var(data)
cat("Variance of the data:\n", variance_value, "\n\n")

# 5. Standard Deviation
std_dev_value <- sd(data)
cat("Standard Deviation of the data:\n", std_dev_value, "\n\n")

# 6. Summary of data (Optional)
cat("Summary of the data:\n")
print(summary(data))
