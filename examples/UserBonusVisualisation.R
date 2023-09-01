# Code by Aafaq Ahmad mir
# loading library
library(ggplot2)
# Existing data
user_id <- c(1, 2, 3, 4, 5, 6, 7, 8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,20)
username <- c("Alicia Eshaal", "Abrar", "Maryam", "Maria",
              "Maya", "usmaan",  "Omar", "Sara",
              "Leila", "Nadia", "Amir","Layla",
              "Yusuf", "sahil", "Zainab","Zakariya",
              "Rafiya", "Abdullah", "Fatima", "Bilal")
bonus <- c(88, 90, 99, 99, 80, 85, 86, 68, 95, 76, 82, 94, 98, 77, 62, 98, 83, 78,90, 96)

# Create a bar plot with extended data
ggplot(data = data.frame(user_id, username, bonus),
       aes(x = username, y = bonus)) +
  geom_bar(stat = "identity") +
  labs(title = "User Bonus Comparison",
       x = "Username",
       y = "Bonus Amount") +
  theme_minimal() +
  coord_flip()
