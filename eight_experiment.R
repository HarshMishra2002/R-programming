# Load ggplot2 library
if (!require("ggplot2")) install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

# 1. Bar Chart
# Create a data frame for a bar chart
bar_data <- data.frame(
  Category = c("A", "B", "C", "D"),
  Values = c(10, 25, 18, 35)
)

# Plot a Bar Chart
ggplot(bar_data, aes(x = Category, y = Values, fill = Category)) +
  geom_bar(stat = "identity", width = 0.6) +
  labs(title = "Bar Chart Example", x = "Category", y = "Values") +
  theme_minimal()

# 2. Histogram
# Generate random data for histogram
set.seed(123)  # For reproducibility
hist_data <- rnorm(1000, mean = 50, sd = 10)  # 1000 random points

# Plot a Histogram
ggplot(data.frame(hist_data), aes(x = hist_data)) +
  geom_histogram(binwidth = 5, color = "black", fill = "blue", alpha = 0.7) +
  labs(title = "Histogram Example", x = "Values", y = "Frequency") +
  theme_minimal()

# 3. Scatter Plot
# Create a data frame for scatter plot
scatter_data <- data.frame(
  X = rnorm(100, mean = 50, sd = 10),  # Random X values
  Y = rnorm(100, mean = 60, sd = 15)   # Random Y values
)

# Plot a Scatter Plot
ggplot(scatter_data, aes(x = X, y = Y)) +
  geom_point(color = "darkred", size = 3, alpha = 0.6) +
  labs(title = "Scatter Plot Example", x = "X-axis", y = "Y-axis") +
  theme_minimal()
