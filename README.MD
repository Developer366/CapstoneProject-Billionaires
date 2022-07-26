# **Kamil Peza's Google Data Analytics Capstone Project** 

# Project Summary:
For the Google Capstone project, I decided to do some data analysis on
[Forbes World's Billionaires List 2022](https://www.kaggle.com/datasets/prasertk/forbes-worlds-billionaires-list-2022). This dataset that I got from Kaggle has a list of 2666 of the top billionaires in the world. I wanted to see if there are any trends with billionaires that I can copy or emulate so we can understand and become billionaires. 

<br>

# Ask Questions to be answered
1. Who is the youngest and oldest billionaire? (top 5 youngest and oldest)
2. What is the average age of all the billionaires
3.  What are the top idustries that billionaires made their money in?
4. Which countries have the most billionaires?
5. Who are the top 5 richest women?

<br>

# Data Cleaning and Verifiying
### What did I check for
- Checked if each column had blanks and whether there was a reason for the blanks
1. Added net worth Column that just how much billions they have Changed finalWorth column into NetWorth

<br>

# Analysis
## *Imported excel sheet with R*
`
forbes_data <- read.csv("forbes_2022_billionaires.csv")
`
<br> <br>

## *Summary of dataset in R*
`
summary(forbes_data)
`
![alt text](Images\graphs-analysis\age_stats.PNG)

The youngest in billionaire in the year 2022 is 19, and the oldest Billionaire is 100. The average age of all the billionaires is: 64. <br><br> 

## *Top 5 youngest and oldest Billionaires*

<br><br><br>---------------------------------------------

# References:
![alt text]()
[title](https://www.example.com)

https://studentwork.prattsi.org/infovis/labs/worlds-billionaires/

https://www.forbes.com/billionaires/