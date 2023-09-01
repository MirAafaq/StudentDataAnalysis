# Load required packages
library(ggplot2)

# Sample data
user_id <- c(1, 2, 3, 4, 5)
username <- c("Alicia Eshaal", "Maryam", "Fatima", "Maria", "Ruqaya")
bonus <- c(88, 90, 99, 20, 100)

# Create a bar plot
ggplot(data = data.frame(user_id, username, bonus), aes(x = username, y = bonus)) +
  geom_bar(stat = "identity") +
  labs(title = "User Bonus Comparison",
       x = "Username",
       y = "Bonus Amount") +
  theme_minimal() +
  coord_flip()  # Flip the x and y axes for better readability
