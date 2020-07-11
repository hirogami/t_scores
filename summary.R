# import libraries
library(tidyverse)
library(mosaic)
# load the data
df0 <- read_csv("englishJapaneseScores1.csv")
summary_all <- mosaic::dfapply(df0, inspect, select = TRUE)

# histogram english all overlaid with density curve
ggplot(df0, aes(x=english)) +
  geom_histogram(aes(y=..density..),
                 binwidth=10,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")

# histogram japanese all overlaid with density curve
ggplot(df0, aes(x=japanese)) +
  geom_histogram(aes(y=..density..),
                 binwidth=10,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")

# overlaid histograms english by country
ggplot(df0, aes(x=english, fill=nationality)) +
  geom_histogram(binwidth=5, alpha=0.8, position="identity")

# overlaid histograms japanese by country
ggplot(df0, aes(x=japanese, fill=nationality)) +
  geom_histogram(binwidth=5, alpha=0.8, position="identity")
