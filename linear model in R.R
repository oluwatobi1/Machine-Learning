head(mtcars)
rm(list = ls())
library(pacman)
require(caTools)
p_load(caTools)

#split <- sample.split(mtcars, SplitRatio=0.7)
mtcars

dt <- sort(sample(nrow(mtcars),nrow(mtcars)*.7))
dt

train <- mtcars[dt,]
test <- mtcars[-dt]
nrow(mtcars)

# or
split <- sample.split(mtcars, SplitRatio = 0.7)
split
training <- subset(mtcars, split=T)
testing <- subset(mtcars, split=F)


spliting <- sort(sample(nrow(mtcars), nrow(mtcars)*0.7))
# creating model( logistic regression)/classification

# 
model <- lm(vs~wt+disp, train)
summary(model)
