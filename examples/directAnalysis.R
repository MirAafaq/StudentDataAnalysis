# Code By Aafaq Ahmad Mir
# Load required packages
library(ggplot2)

# Student data (directly defined)
student_id <- c(1:50)
math_score <- c(85, 76, 90, 67, 78, 92, 60, 81, 88, 73, 
                79, 95, 70, 84, 62, 88, 76, 83, 97, 55, 
                89, 72, 94, 66, 78, 80, 83, 71, 75, 87, 
                98, 63, 81, 69, 91, 74, 74, 82, 86, 68, 
                93, 79, 75, 77, 85, 89, 73, 92, 57, 84)

reading_score <- c(78, 82, 85, 72, 80, 88, 65, 76, 83, 79, 
                   81, 90, 75, 78, 68, 83, 78, 85, 92, 60, 
                   87, 73, 89, 71, 79, 82, 84, 76, 78, 86, 
                   94, 70, 81, 74, 88, 78, 83, 85, 73, 89, 
                   80, 76, 77, 83, 88, 75, 90, 62, 83, 79)

# Display summary statistics
math_mean <- mean(math_score)
reading_mean <- mean(reading_score)

cat("Math Score Mean:", math_mean, "\n")
cat("Reading Score Mean:", reading_mean, "\n")

# Scatter plot of scores
ggplot(data.frame(student_id, math_score, reading_score), aes(x = math_score, y = reading_score)) +
  geom_point() +
  labs(title = "Math vs Reading Scores",
       x = "Math Score",
       y = "Reading Score")

# Histogram of math scores
ggplot(data.frame(student_id, math_score), aes(x = math_score)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Distribution of Math Scores",
       x = "Math Score",
       y = "Frequency")
