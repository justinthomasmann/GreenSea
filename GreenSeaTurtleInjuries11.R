#Naming
---
"title: Green Sea Turtle External Injuries
Authors: Nicolas Castro and Justin Mann
date: 02-27-2024
output: html_document"
---

#Plot Functions:
library(ggplot2)
library(tidyverse); theme_set(theme_classic())

#Import Data: (called df3)
df3 <- read.csv("GreenSeaTurtleInjuries.csv", h=TRUE)
#filter out duplicates:
df3 <- df3 %>% distinct(ID, .keep_all = TRUE)

read.table()

#making Nature a factor:
class(df3$Nature)

df3$Nature <- as.factor(df3$Nature)
df3$Source <- gsub(" ", "", df3$Source)
df3$Source <- as.factor(df3$Source)

#Table for each factor
NatureTable <- table(df3$Nature)
BodyPartTable <- table(df3$BodyPart)
InjuryTypeTbale <- table(df3$InjuryType)
InjuriesPerTurtleTable <- table(df3$InjuriesPerTurtle)
InjuryStageTable <- table(df3$InjuryStage)
SourceofInjuryTable <- table(df3$Source)
<<<<<<< HEAD
SourceofInjuryTable
InjuryTypeTbale
=======
>>>>>>> e2dd9d371d0ce8f776a6ff1d415c7e3bd706b280
#Basic data plots:

BodyPart.plot <- barplot(BodyPartTable)
#Distribution of body parts injuries were present on in Green turtles over 5 years
#MULTI-> multiple parts of the body

InjuryType.plot <- barplot(InjuryTypeTbale)
#Shows the distribution of Injury Types of Green Sea Turtles over 5 years
#edit, x axis not clear

Nature.plot <- barplot(NatureTable)
#fix 2/3 problem in data set->is there a way to make the 2/3 a 3 in the data set
#1: Stands for Anthropogenic Nature of Injury
#2: Stands for Natural Nature of Injury
#3: No injury
#4: Unknown Nature of Injury

Source.plot <- barplot(SourceofInjuryTable)
#shows distribution of sources of injuries present in Green Sea Turtles over 5 years
#work on axis, bars not clear
#MS- stands for mating scars

InjuriesPerTurtle.plot <- barplot(InjuriesPerTurtleTable)
#Shows the distribution of the injuries per turtle of the Green Sea turtles over 5 years


#Relationships between variables:

#Probability and Significance tests:

#Number of natural injuries
natural <- length(df3$Nature[df3$Nature==2])
#Number of anthropogenic injuries
anthro <- length(df3$Nature[df3$Nature==1])
#Number of unknown injuries
unknown <- length(df3$Nature[df3$Nature==4])


?prop.test
anthro
natural+anthro+unknown

#1-sample proportions test with Yates continuity correction
prop.test(anthro, natural+anthro+unknown,
          alternative = "two.sided",
          conf.level = 0.95,
          correct = TRUE) #this line makes the test non-parametric to account for small sample size (N<30)
#This test indicates that the proportion of anthropogenic injuries is significantly less than 0.5.

#Graphing relationships between variables:
#Categorical x Categorical->stacked bar plot- can change the filling of each section
  #Can use this to show BodyPart and Type of Injury, Type of Injury and Source, and Source and BodyPart

#Statistical Analysis:
  #t-test: normal distribution of data
  #wilcox test: non-nomral distribution of data->can do this to be safe
  #look at one specific variable and if there are more anthro or natural injuries
  #can also use this to look at all of the injuries as a whole

#Unknown vs. Anthropogneic
#Unknown from natural
#and anthropogenic from natural -> exclude unknown when looking at statisticl anaylisis
#make number for all source categories

#fix graphs
