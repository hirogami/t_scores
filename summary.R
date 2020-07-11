# import libraries
library(tidyverse)
library(mosaic)
# load the data
df0 <- read_csv("englishJapaneseScores1.csv")
summary_all <- mosaic::dfapply(df0, inspect, select = TRUE)
# histogram english overlaid with density curve
ggplot(df0, aes(x=english)) +
  geom_histogram(aes(y=..density..),
                 binwidth=10,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")
# histogram japanese overlaid with density curve
ggplot(df0, aes(x=japanese)) +
  geom_histogram(aes(y=..density..),
                 binwidth=10,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")
