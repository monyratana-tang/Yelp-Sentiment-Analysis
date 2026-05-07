# --------------------------------------------------
# Yelp Sentiment Analysis
# Monyratana Tang
# --------------------------------------------------

# -----------------------------
# 1. Load Libraries
# -----------------------------

library(tidyverse)
library(tidytext)
library(wordcloud)
library(RColorBrewer)

# -----------------------------
# 2. Load Dataset
# -----------------------------

Yelp <- read.delim(
  "~/Desktop/BZAN 6351 | Basic Programming for Business Analytics/Yelp/yelp_labelled.csv",
  header = FALSE,
  sep = ","
)

# Keep only first two columns
Yelp <- Yelp[, 1:2]

# Rename columns
colnames(Yelp) <- c("text", "label")

# Preview data
head(Yelp)
colnames(Yelp)

# -----------------------------
# 3. Text Mining Preparation
# -----------------------------

words <- Yelp %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words, by = "word") %>%
  filter(!word %in% c("0", "1"))

# Count most common words
word_count <- words %>%
  count(word, sort = TRUE)

# Preview word counts
head(word_count)

# -----------------------------
# 4. Word Cloud Visualization
# -----------------------------

wordcloud(
  words = word_count$word,
  freq = word_count$n,
  max.words = 100,
  scale = c(6, 1),
  random.order = FALSE,
  colors = brewer.pal(8, "Set3")
)

# -----------------------------
# 5. Sentiment Analysis
# -----------------------------

sentiment <- words %>%
  inner_join(get_sentiments("bing"), by = "word") %>%
  count(sentiment)

# Preview sentiment counts
sentiment

# -----------------------------
# 6. Sentiment Visualization
# -----------------------------

ggplot(sentiment, aes(x = sentiment, y = n, fill = sentiment)) +
  geom_col() +
  labs(
    title = "Sentiment Analysis of Yelp Reviews",
    x = "Sentiment",
    y = "Word Count"
  ) +
  theme_minimal()

# -----------------------------
# 7. Most Common Sentiment Words
# -----------------------------

sentiment_words <- words %>%
  inner_join(get_sentiments("bing"), by = "word") %>%
  count(word, sentiment, sort = TRUE)

# Top sentiment words
sentiment_words %>%
  group_by(sentiment) %>%
  slice_max(n, n = 10)

# -----------------------------
# 8. Interpretation
# -----------------------------

# Overall, the word cloud suggests that consumers are
# generally having positive experiences. However,
# when separating the data into positive and negative
# sentiment, a more balanced picture emerges.
#
# While positive terms appear more frequently,
# there is still a noticeable presence of negative
# language. Much of the dissatisfaction appears
# to be related to:
#
# - food quality
# - pricing
# - poor customer service
#
# These findings suggest restaurants should focus on:
#
# - improving service efficiency
# - maintaining food consistency
# - strengthening customer experience
# - addressing operational issues early