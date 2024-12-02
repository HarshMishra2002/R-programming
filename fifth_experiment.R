# Load necessary library
library(ggplot2)

# 1. Create a dataset
# Independent variable (predictor)
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
# Dependent variable (response)
y <- c(3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

# Combine into a data frame
data <- data.frame(x, y)

# 2. Perform Linear Regression
# Fit a linear model: y = β0 + β1*x
linear_model <- lm(y ~ x)

# Display the summary of the model
cat("Linear Regression Summary:\n")
print(summary(linear_model))

# 3. Extract Coefficients
intercept <- coef(linear_model)[1]
slope <- coef(linear_model)[2]
cat("\nIntercept (β0):", intercept, "\nSlope (β1):", slope, "\n\n")

# 4. Predict values using the model
predicted_values <- predict(linear_model)

# Add predictions to the data frame
data$Predicted <- predicted_values

# 5. Visualization
# Scatter plot with regression line
cat("Plotting the regression line...\n")
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3) +               # Scatter plot
  geom_line(aes(y = Predicted), color = "red", size = 1) +  # Regression line
  labs(title = "Linear Regression: y ~ x",
       x = "Independent Variable (x)",
       y = "Dependent Variable (y)") +
  theme_minimal()
