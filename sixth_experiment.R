# Load necessary library (optional for visualization)
library(ggplot2)

# 1. Create a dataset
# Independent variables
age <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)       # Predictor 1
income <- c(40, 50, 60, 65, 70, 75, 80, 85, 90, 95)    # Predictor 2

# Dependent variable
spending_score <- c(20, 25, 30, 35, 40, 45, 50, 55, 60, 65)  # Response variable

# Combine into a data frame
data <- data.frame(age, income, spending_score)

# 2. Perform Multiple Regression
# Fit a model: spending_score ~ age + income
multiple_model <- lm(spending_score ~ age + income, data = data)

# Display the summary of the regression model
cat("Multiple Regression Summary:\n")
print(summary(multiple_model))

# 3. Extract Coefficients
intercept <- coef(multiple_model)[1]
age_coeff <- coef(multiple_model)[2]
income_coeff <- coef(multiple_model)[3]

cat("\nIntercept (β0):", intercept, 
    "\nCoefficient for Age (β1):", age_coeff, 
    "\nCoefficient for Income (β2):", income_coeff, "\n\n")

# 4. Make Predictions
# Predict using the regression model
predicted_scores <- predict(multiple_model)

# Add predictions to the dataset
data$Predicted <- predicted_scores

# Display the dataset with predictions
cat("Data with Predicted Spending Scores:\n")
print(data)

# 5. Visualization (Scatterplot with regression prediction plane)
cat("Plotting Age vs. Spending Score...\n")
ggplot(data, aes(x = age, y = spending_score)) +
  geom_point(color = "blue", size = 3) +  # Actual points
  geom_line(aes(y = Predicted), color = "red", size = 1) +  # Predicted line
  labs(title = "Multiple Regression: Spending Score vs. Age + Income",
       x = "Age",
       y = "Spending Score") +
  theme_minimal()
