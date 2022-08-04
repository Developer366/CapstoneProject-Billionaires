# Kamil Peza Google Capstone Project 06/2022

# install & Load Packages
install.packages("readxl")

library(readxl)

# saving excel file
forbes_data <- read.csv("forbes_2022_billionaires.csv")
forbes_data
dim(forbes_data)

#looking at the data -------------------------
#The max function won't return any values if it encounters the NA values in the process.
min(forbes_data$age, na.rm = TRUE) 
max(forbes_data['age'], na.rm = TRUE)
min(forbes_data['age'])
mean(forbes_data$age, na.rm=TRUE) # returns 64.206
summary(forbes_data)

# counting Male,Female Billionaires, also blanks
females <- sum(forbes_data$gender == 'F')
females
males <- sum(forbes_data$gender == 'M')
males
blanks <- sum(forbes_data$gender == '')
blanks

barplot(males, names.arg - females)


# pie(x)
# dev.off()


# helpful links/ fixing errors
# http://uc-r.github.io/na_exclude
# https://stackoverflow.com/questions/38068774/rstudio-suddenly-stopped-showing-plots-in-the-plot-pane