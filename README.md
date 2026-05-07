# Yelp Sentiment Analysis 🍽️📊

This project applies natural language processing (NLP) and sentiment analysis techniques to Yelp restaurant reviews in order to better understand customer experience, satisfaction drivers, and common service complaints. Using R, the analysis transforms unstructured text data into actionable business insights by identifying frequently mentioned themes, emotional sentiment patterns, and key areas influencing customer perception.

## Problem Statement

Online customer reviews strongly influence restaurant reputation and consumer decision-making. The purpose of this project is to analyze Yelp review text data to identify patterns in customer sentiment and uncover the factors most associated with positive and negative dining experiences. The analysis aims to transform unstructured review text into meaningful insights that can help businesses improve customer satisfaction and operational performance.

## Research Questions

- What themes appear most frequently in Yelp restaurant reviews?
- Are customer experiences generally positive or negative?
- Which words are most strongly associated with negative sentiment?
- What aspects of the dining experience drive customer satisfaction?
- Which operational areas appear most responsible for complaints?

### Variables

- `text`: Customer review text
- `label`: Sentiment classification (1 = positive, 0 = negative)

## Data Mining Operations

This project was conducted in R using text mining, natural language processing (NLP), and sentiment analysis techniques.

### Data Wrangling

- Imported Yelp review dataset
- Renamed and formatted variables
- Tokenized review text into individual words
- Removed stop words and unnecessary tokens
- Cleaned and standardized textual data

### Modeling & Analysis

- Word frequency analysis
- Word cloud visualization
- Sentiment classification using Bing Lexicon
- Positive vs negative word frequency analysis

### Why Sentiment Analysis?

Sentiment analysis was selected because it allows unstructured customer review text to be transformed into measurable emotional insights. This technique helps identify customer satisfaction drivers and recurring service-related issues.

### Libraries Used

- tidyverse (`dplyr`, `ggplot2`)
- tidytext
- wordcloud
- RColorBrewer

## Limitations

This project focuses only on textual sentiment and does not include additional customer information such as demographics, ratings, spending behavior, or restaurant categories. Sentiment classification also relies on predefined lexicons, meaning some words may not fully capture context, sarcasm, or nuanced emotional tone.

Additionally, the dataset size is relatively small compared to large-scale commercial review platforms, which may limit generalizability.

## Model Outputs & Insights

### Key Insights

- Positive sentiment words appeared more frequently than negative sentiment words
- Food quality and customer service were the most commonly discussed themes
- Negative reviews frequently referenced:
  - poor service
  - slow wait times
  - bland food
  - overpriced meals
- Positive reviews commonly highlighted:
  - delicious food
  - friendly staff
  - atmosphere
  - overall dining experience

---

### Word Frequency & Customer Themes
<img src="images/Word Cloud.png" width="700"/>

The word cloud highlights the most frequently occurring terms within Yelp restaurant reviews. Words such as “food,” “service,” “friendly,” and “delicious” appeared prominently, suggesting that customer experiences are strongly shaped by food quality and service interactions. While many positive terms dominate the visualization, several negative terms also appear, indicating areas where customer dissatisfaction exists.

---

### Sentiment Distribution Analysis

<img src="images/Sentiment Analysis.png" width="700"/>

Sentiment analysis revealed that positive sentiment words appeared more frequently than negative sentiment words overall. However, negative experiences remain significant and are commonly associated with slow service, poor food quality, and dissatisfaction with pricing. These findings suggest that restaurants should focus on operational improvements to consistency, service speed, and perceived customer value.



## Recommendations

Based on the analysis, restaurants should prioritize improvements in customer service efficiency, food consistency, and perceived value. Negative sentiment frequently cited slow service, bland food, and dissatisfaction with pricing, suggesting that these operational areas significantly influence customer perception.

Additionally, restaurants should continuously monitor online reviews to identify recurring customer concerns before they become larger reputation issues. Businesses can also leverage positive themes such as friendly service and atmosphere in marketing campaigns to strengthen brand perception and customer loyalty.

Sentiment analysis provides businesses with a continuous feedback loop that supports data-driven decision-making and improves the customer experience.

## Conclusion

Yes, the project successfully identified meaningful patterns of customer sentiment in Yelp restaurant reviews. The analysis revealed that, while customer experiences were generally positive, recurring complaints about service quality, food consistency, and pricing were strongly associated with negative sentiment. These findings demonstrate how natural language processing can transform unstructured customer feedback into actionable business insights.

## Files

- `Yelp_Sentiment_Analysis.Rmd` → Full analysis with explanations
- `Yelp_Sentiment_Analysis.html` → Final knitted report
- `Yelp_Sentiment_Analysis.R` → Clean R script
- `yelp_labelled.csv` → Dataset
