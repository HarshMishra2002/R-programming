# 1. VECTORS
# Creating vectors
vector_a <- c(1, 2, 3, 4, 5)   # Numeric vector
vector_b <- c("Apple", "Banana", "Cherry")  # Character vector
vector_c <- c(TRUE, FALSE, TRUE, FALSE)  # Logical vector

# Printing vectors using cat
cat("Numeric Vector:\n", vector_a, "\n")
cat("Character Vector:\n", vector_b, "\n")
cat("Logical Vector:\n", vector_c, "\n\n")

# 2. MATRIX
# Creating a matrix
matrix_1 <- matrix(c(1,3,6,4), nrow = 2, ncol = 2, byrow = TRUE)  # Filling rows first
cat("Matrix:\n")
print(matrix_1)  # Using print here because `cat` cannot display a matrix directly

# Accessing elements in a matrix
element <- matrix_1[1, 2]  # Element in 1st row and 2nd column
cat("Element at row 1, column 2:", element, "\n\n")

# 3. ARRAYS
# Creating a 3D array
array_1 <- array(1:24, dim = c(3, 4, 2))  # 3 rows, 4 columns, 2 layers
cat("3D Array:\n")
print(array_1)  # Using print for array visualization

# Accessing an element in the array
array_element <- array_1[2, 3, 1]  # Element at 2nd row, 3rd column, 1st layer
cat("Element at row 2, column 3, layer 1:", array_element, "\n\n")

# 4. LISTS
# Creating a list
my_list <- list(Name = "John", Age = 25, Scores = c(90, 85, 88))
cat("List:\n")
print(my_list)  # Using print for better list visualization

# Accessing elements in a list
cat("Name from the list:", my_list$Name, "\n")
cat("Scores from the list:\n", my_list$Scores, "\n\n")

# 5. DATA FRAMES
# Creating a data frame
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(20, 22, 23),
  Marks = c(85, 90, 88)
)
cat("Data Frame:\n")
print(students)  # Using print for better data frame visualization

# Accessing elements in a data frame
cat("Names of students:\n", students$Name, "\n")
cat("First row of the data frame:\n")
print(students[1, ])  # Printing the first row
cat("Marks of Charlie:", students[students$Name == "Charlie", "Marks"], "\n")
