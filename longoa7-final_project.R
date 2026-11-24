#longoa7-final_project.R
#STA145 Final Project: Upload your data into R

#Step 6: load the tidyverse
library(readr)

#Step 7: load data.csv from the working directory 
data <- read_delim("data.csv")

#Step 8: run the three checks
dim(data)
names(data)
summary(data)

summary(data$weekly_exercise)
sd(data$weekly_exercise)

table(data$exercise_motivation)

#linear regression 
linear_model <- lm(weekly_exercise ~ exercise_motivation, data=data) 
summary(linear_model)

#boxplot
boxplot(weekly_exercise ~ exercise_motivation, data=data)





