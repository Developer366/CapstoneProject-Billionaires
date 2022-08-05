# Kamil Peza Google Capstone Project 06/2022 "Forbes Billionaires"

# install & Load Packages
install.packages("readxl")
install.packages("ggplot2")
library(readxl)
library(ggplot2)

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

#plotting age and net worth
ggplot(data = forbes_data, mapping = aes(x = age, y = NetWorth)) +
  geom_point() + geom_point(colour = "blue")

ggplot(data = forbes_data, mapping = aes(x = age)) +
  geom_bar(colour = "blue")


#--------------------------------------------------------------
# helpful links/ fixing errors
# http://uc-r.github.io/na_exclude
# https://stackoverflow.com/questions/38068774/rstudio-suddenly-stopped-showing-plots-in-the-plot-pane