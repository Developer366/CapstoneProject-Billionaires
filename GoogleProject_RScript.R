# Kamil Peza Google Capstone Project 06/2022

# install & Load Packages
install.packages("readxl")

library(readxl)

# saving excel file
forbes_data <- read.csv("forbes_2022_billionaires.csv")
head(forbes_data)
colnames(forbes_data)
forbes_data
forbes_data['age']
max(forbes_data['age'])
mean(forbes_data['age'])
summary(forbes_data)