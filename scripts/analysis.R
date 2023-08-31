# Load required packages
library(ggplot2)

# Load the dataset
dataset <- read.csv("data/student_scores.csv")

# Display summary statistics
summary(dataset)

# Scatter plot of scores
ggplot(dataset, aes(x = math_score, y = reading_score)) +
  geom_point() +
  labs(title = "Math vs Reading Scores",
       x = "Math Score",
       y = "Reading Score")

# Histogram of math scores
ggplot(dataset, aes(x = math_score)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Distribution of Math Scores",
       x = "Math Score",
       y = "Frequency")
