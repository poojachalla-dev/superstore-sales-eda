# --------------------------------------------
# Superstore Sales Exploratory Data Analysis
# Author: Pooja Challa
# Purpose: Analyze sales data to find insights
# --------------------------------------------

# -----------------------------
# 1. Install Required Libraries
# ----------------------------
install.packages("tidyverse")
install.packages("janitor")
install.packages("lubridate")


# -----------------------------
# 2. Load Required Libraries
# -----------------------------

# tidyverse -> for data manipulation and visualization
# janitor -> for cleaning column names
library(tidyverse)
library(janitor)
library(lubridate)


# -----------------------------
# 3. Import Dataset
# -----------------------------

sales <- read.csv("data/train.csv")


# -----------------------------
# 4. Preview the Data
# -----------------------------

# Explore data
head(sales)

# Check structure of the dataset
str(sales)

# View summary statistics
summary(sales)

# View column names
names(sales)

# -----------------------------
# 5. Clean Column Names
# -----------------------------

# Convert column names to lowercase and snake_case
sales <- clean_names(sales)

# Check updated column names
names(sales)


# -----------------------------
# 6. Check Missing Values
# -----------------------------

# Count missing values in each column
colSums(is.na(sales))



# -----------------------------
# 7. Basic Dataset Information
# -----------------------------

# Check number of rows and columns
dim(sales)

# View unique product categories
unique(sales$category)



# -----------------------------
# 8. Total Sales by Category
# -----------------------------

sales_by_category <- sales %>%
  group_by(category) %>%
  summarise(total_sales = sum(sales))

sales_by_category


# -----------------------------
# 9. Total Sales by Region
# -----------------------------

sales_by_region <- sales %>%
  group_by(region) %>%
  summarise(total_sales = sum(sales))

sales_by_region


# -----------------------------
# 10. Top 10 Products by Sales
# -----------------------------

top_products <- sales %>%
  group_by(product_name) %>%
  summarise(total_sales = sum(sales)) %>%
  arrange(desc(total_sales)) %>%
  head(10)

top_products


# -----------------------------
# 11. Visualization: Sales by Category
# -----------------------------

ggplot(sales, aes(x = category, y = sales)) +
  geom_bar(stat = "summary", fun = "sum") +
  labs(
    title = "Total Sales by Category",
    x = "Category",
    y = "Total Sales"
  )



# -----------------------------
# 12. Visualization: Sales by Region
# -----------------------------

ggplot(sales, aes(x = region, y = sales)) +
  geom_bar(stat = "summary", fun = "sum") +
  labs(
    title = "Total Sales by Region",
    x = "Region",
    y = "Total Sales"
  )


# -----------------------------
# 13. Save Plot
# -----------------------------

# Save the plots to the plots folder
ggsave("plots/sales_by_region.png")
ggsave("plots/sales_by_category.png")
ggsave("plots/monthly_sales_trend.png")
ggsave("plots/top_10_states_by_revenue.png")


# -----------------------------
# 14. Monthly Sales Trend
# -----------------------------

# Convert order_date column to date format
sales$order_date <- as.Date(sales$order_date)

# Extract month from order date
sales$month <- format(sales$order_date, "%Y-%m")

# Calculate total sales per month
monthly_sales <- sales %>%
  group_by(month) %>%
  summarise(total_sales = sum(sales))

monthly_sales

# Plot monthly sales trend
ggplot(monthly_sales, aes(x = month, y = total_sales, group = 1)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Monthly Sales Trend",
    x = "Month",
    y = "Total Sales"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))




# -----------------------------
# 15. Top 10 States by Sales
# -----------------------------

top_states <- sales %>%
  group_by(state) %>%
  summarise(total_sales = sum(sales)) %>%
  arrange(desc(total_sales)) %>%
  head(10)

top_states

# Plot top states
ggplot(top_states, aes(x = reorder(state, total_sales), y = total_sales)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(
    title = "Top 10 States by Revenue",
    x = "State",
    y = "Total Sales"
  )
