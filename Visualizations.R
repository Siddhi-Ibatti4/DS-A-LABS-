# install.packages if needed
library(tidyverse)
library(DataExplorer)
library(ggplot2)
library(corrplot)
library(ggcorrplot)
library(plotly)
library(tidytext)
library(wordcloud)
library(cluster)
library(factoextra)
library(randomForest)
library(caret)

data <- read.csv("skincare_climate_dataset.csv", stringsAsFactors = FALSE)
glimpse(data)
summary(data)

# Types
library(janitor)
data <- janitor::clean_names(data)
data <- data %>%
  mutate(
    price = as.numeric(price),
    rating = as.numeric(rating),
    humidity = as.numeric(humidity),
    climate = as.factor(climate)
  )
# Number of rows and columns
dim(data)

# Preview first few rows
head(data)

# Summary statistics
summary(data)

# Check for missing values
colSums(is.na(data))
ggplot(data, aes(x = price)) +
  geom_histogram(bins = 20, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Product Prices", x = "Price", y = "Count")

ggplot(data, aes(x = rating)) +
  geom_histogram(bins = 10, fill = "lightgreen", color = "black") +
  labs(title = "Distribution of Product Ratings", x = "Rating", y = "Count")

ggplot(data, aes(x = climate, fill = climate)) +
  geom_bar() +
  labs(title = "Number of Products by Climate") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(data, aes(x = price, y = rating)) +
  geom_point(aes(color = climate)) +
  labs(title = "Price vs Rating by Climate", x = "Price", y = "Rating")

data %>%
  group_by(climate) %>%
  summarise(avg_rating = mean(rating, na.rm = TRUE)) %>%
  ggplot(aes(x = climate, y = avg_rating, fill = climate)) +
  geom_col() +
  labs(title = "Average Rating by Climate")

data %>%
  group_by(skin_type) %>%
  summarise(avg_rating = mean(rating, na.rm = TRUE)) %>%
  ggplot(aes(x = skin_type, y = avg_rating, fill = skin_type)) +
  geom_col() +
  labs(title = "Average Rating by Skin Type")

library(corrplot)
numeric_data <- data %>% select(where(is.numeric))
corrplot(cor(numeric_data, use = "complete.obs"), method = "circle")

library(plotly)
plot_ly(data, x = ~price, y = ~rating, color = ~climate, type = "scatter", mode = "markers")








