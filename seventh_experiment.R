# 1. Generate Random Numbers from Normal Distribution
set.seed(123)  # Set seed for reproducibility
random_numbers <- rnorm(1000, mean = 50, sd = 10)  # 1000 numbers, mean = 50, sd = 10

cat("Random numbers (first 10 values):\n")
print(head(random_numbers, 10))

# 2. Calculate Probability Density for a Specific Value
value <- 60
probability_density <- dnorm(value, mean = 50, sd = 10)
cat("\nProbability density at x =", value, ":", probability_density, "\n")

# 3. Calculate Cumulative Probability for a Value
cumulative_probability <- pnorm(value, mean = 50, sd = 10)
cat("Cumulative probability for x <=", value, ":", cumulative_probability, "\n")

# 4. Find the Value Corresponding to a Given Cumulative Probability
quantile <- 0.95
value_at_quantile <- qnorm(quantile, mean = 50, sd = 10)
cat("Value corresponding to cumulative probability of", quantile, ":", value_at_quantile, "\n")

# 5. Visualize the Normal Distribution
# Load ggplot2 for visualization
library(ggplot2)

# Create a sequence of x values
x_values <- seq(20, 80, by = 0.1)

# Calculate the density for each x value
density_values <- dnorm(x_values, mean = 50, sd = 10)

# Create a data frame for plotting
normal_data <- data.frame(x = x_values, density = density_values)

# Plot the normal distribution
cat("\nPlotting the normal distribution curve...\n")
ggplot(normal_data, aes(x = x, y = density)) +
  geom_line(color = "blue", size = 1) +
  labs(title = "Normal Distribution (Mean = 50, SD = 10)",
       x = "Value (x)",
       y = "Density") +
  theme_minimal()
