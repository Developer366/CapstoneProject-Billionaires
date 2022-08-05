# Kamil Peza Google Capstone Project 06/2022 "Forbes Billionaires"

# install & Load Packages
install.packages("readxl")
install.packages("ggplot2")
install.packages("dplyr")
library(readxl)
library(ggplot2)
library(dplyr)

# saving excel file
forbes_data <- read.csv("forbes_2022_billionaires.csv")
forbes_data
dim(forbes_data) #count the rows and columns 

#setting the working Directory on pc
getwd()
setwd("C:/Users/Polska/Desktop/CapStoneProject")

#---------------------looking at the data-------------------------
#The max function won't return any values if it encounters the NA values in the process.
min(forbes_data$age, na.rm = TRUE) 
max(forbes_data['age'], na.rm = TRUE)
min(forbes_data['age'])
mean(forbes_data$age, na.rm=TRUE) # returns 64.206
summary(forbes_data)
forbes_data$age
count(forbes_data)

# counting Male & Female Billionaires, also blanks
females <- sum(forbes_data$gender == 'F')
females
males <- sum(forbes_data$gender == 'M')
males
blanks <- sum(forbes_data$gender == '')
blanks

#plotting gender data
e <- ggplot(mpg, aes(cty, hwy))
ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

#plotting age and net worth (in billions)
ggplot(data = forbes_data, mapping = aes(x = age, y = NetWorth)) +
  geom_point() + geom_point(colour = "blue") + ggtitle("Billionaire's Net Worth (in billions) and Age")

#BAR Plot of genders with labels
gender <- forbes_data[complete.cases(forbes_data), ]
gender

ggplot(data = forbes_data, mapping = aes(x = gender)) +
  geom_bar(stat = "count", fill="steelblue") + 
  geom_text(stat="count", aes(label = after_stat(count)), vjust=1.6, color="white", size=3.5) +
  theme_minimal() +
  ggtitle("Number of Female and Male Billionaires") 

# Don't map a variable to y

ggplot(data = forbes_data, aes(x=gender)) +
  geom_bar(stat="bin", width=0.7, fill="steelblue") +
  geom_text(aes(label=gender), vjust=1.6, color="white", size=3.5) +
  theme_minimal()

ggplot(data= forbes_data, aes(x=age, y=NetWorth)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=age), vjust=-0.3, size=3.5)+
  theme_minimal()





#--------------------------------------------------------------
# helpful links/ fixing errors
# http://uc-r.github.io/na_exclude
# https://stackoverflow.com/questions/38068774/rstudio-suddenly-stopped-showing-plots-in-the-plot-pane
# https://www.youtube.com/watch?v=HPJn1CMvtmI&t=181s&ab_channel=RProgramming101