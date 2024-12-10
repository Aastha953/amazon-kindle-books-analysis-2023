# Load required libraries
# dplyr: For data manipulation
# ggplot2: For data visualization
# readr: For reading CSV files
library(dplyr)
library(ggplot2)
library(readr)

# Load the dataset
book_sales_data <- kindle_data_v2

# Data Cleaning
# Replace missing values in 'author' with "Unknown Author"
# Convert 'publishedDate' to Date format
# Create a new column 'total_ratings' as a product of 'stars' and 'reviews'
book_sales_data <- book_sales_data %>%
  mutate(author = ifelse(is.na(author), "Unknown Author", author), # Fill missing authors
         publishedDate = as.Date(publishedDate, format = "%Y-%m-%d"), # Convert to Date format
         total_ratings = stars * reviews) # Calculate total ratings

# Identify Top Performing Titles
# Select the top 10 books based on 'total_ratings'
# Include relevant columns: title, author, stars, reviews, price, category_name, isBestSeller
top_titles_by_ratings <- book_sales_data %>%
  arrange(desc(total_ratings)) %>% # Sort by total ratings in descending order
  select(title, author, stars, reviews, price, category_name, isBestSeller) %>%
  slice(1:10) # Select the top 10 rows

# Summarize Data by Category
# Group by 'category_name' and calculate:
# - Total ratings
# - Average stars
# - Average price
# - Total reviews
category_summary <- book_sales_data %>%
  group_by(category_name) %>%
  summarise(
    total_ratings = sum(total_ratings, na.rm = TRUE), # Total ratings per category
    avg_stars = mean(stars, na.rm = TRUE), # Average stars per category
    avg_price = mean(price, na.rm = TRUE), # Average price per category
    total_reviews = sum(reviews, na.rm = TRUE) # Total reviews per category
  ) %>%
  arrange(desc(total_ratings)) # Sort by total ratings in descending order

# Print the summaries to the console
print("Top Performing Titles by Ratings")
print(top_titles_by_ratings)

print("Category Summary")
print(category_summary)

# Visualization: Total Ratings by Category
# Plot a bar chart showing total ratings for each category
ggplot(category_summary, aes(x = reorder(category_name, -total_ratings), y = total_ratings)) +
  geom_bar(stat = "identity", fill = "steelblue") + # Bar chart with blue bars
  theme_minimal() + # Minimal theme
  coord_flip() + # Flip coordinates for horizontal bars
  labs(title = "Total Ratings by Category", x = "Category", y = "Total Ratings")

# Visualization: Average Stars by Category
# Plot a bar chart showing average star ratings for each category
ggplot(category_summary, aes(x = reorder(category_name, -avg_stars), y = avg_stars)) +
  geom_bar(stat = "identity", fill = "coral") + # Bar chart with coral-colored bars
  theme_minimal() + # Minimal theme
  coord_flip() + # Flip coordinates for horizontal bars
  labs(title = "Average Star Ratings by Category", x = "Category", y = "Average Stars")

# Visualization: Average Price by Category
# Plot a bar chart showing average price for each category
ggplot(category_summary, aes(x = reorder(category_name, -avg_price), y = avg_price)) +
  geom_bar(stat = "identity", fill = "darkgreen") + # Bar chart with green bars
  theme_minimal() + # Minimal theme
  coord_flip() + # Flip coordinates for horizontal bars
  labs(title = "Average Price by Category", x = "Category", y = "Average Price")

