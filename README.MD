# **Kamil Peza's Google Data Analytics Capstone Project** 

# Project Summary:
For the Google Capstone project, I decided to do data analysis on
[Forbes World's Billionaires List 2022](https://www.kaggle.com/datasets/prasertk/forbes-worlds-billionaires-list-2022). This dataset that I got from Kaggle has a list of 2666 of the top billionaires in the world. I wanted to see if there are any trends with billionaires that I can copy or emulate so we can understand and become billionaires. 

<br>

# Ask Questions to be answered
1. Who are the youngest and oldest billionaire? (top 5 youngest and oldest)
2. What is the average age of all the billionaires?
3. How many woman billionaires are there? (who are the top 5)
4.  What are the top idustries that billionaires made their money in?
5. Which countries have the most billionaires? 

<br>

# Data Cleaning and Verifiying
### What did I check for:
1. Checked if each column had blanks and whether there was a reason for the blanks
2. Checked for duplicates
3. Added a Net worth Column that shows how much billions the person has shown in whole numbers

## Checked for Duplicates in Excel:
![noDuplicates](Images/DataCleaning/NoDuplicateFound.PNG)

## Created new Net Worth Column:
![NetWorth](Images/DataCleaning/NetWorthColumn.PNG)

## Blanks in age:
I noticed that there were some missing values for the age column. The reason for the missing age values was because Forbes took entire families netwroth into account as one person/row.

![BlanksInAge](Images/DataCleaning/FamilyGroupNoAge.PNG)

Added age to some of the blanks calcualted based on birth day

![AgeFormula](Images/DataCleaning/CalcAge.PNG)

## Changed Sources of Income to be more consistant

![airline](Images/DataCleaning/airline-airlines.PNG)
![e-commerce](Images/DataCleaning/e-commerce.PNG)

<br> <br> <br>

# DATA Analysis
## *Imported excel sheet with R*
`
forbes_data <- read.csv("forbes_2022_billionaires.csv")
`
<br> <br>

## *Summary of dataset in R*
`
summary(forbes_data)
`
![alt text](Images/graphs-analysis/age_stats.PNG)

The youngest in billionaire in the year 2022 is 19, and the oldest Billionaire is 100. The average age of all the billionaires is: 64. <br><br> 

## *Top 5 youngest and oldest Billionaires*

<br><br><br>
  
  <br>

# Project References:

  - https://studentwork.prattsi.org/infovis/labs/worlds-billionaires/

- https://www.forbes.com/billionaires/