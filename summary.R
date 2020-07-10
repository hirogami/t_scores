# install librraries
library(tidyverse)
library(mosaic)
# load the data
df0 <- read_csv("englishJapaneseScores1.csv")
# summarize the data
summary_all <- mosaic::dfapply(df0, inspect, select = TRUE)
# histograms
hist(df0$english, breaks=20)
hist(df0$japanese, breaks=20)
