#Naming
---
"title: Green Sea Turtle External Injuries
Authors: Nicolas Castro and Justin Mann
date: 02-27-2024
output: html_document"
---

#Attach Data Table:
attach(GreenSeaTurtleInjuries)


#Plot Functions:
library (ggplot2)
library (tidyverse); theme_set(theme_classic())

#Import Data: (called df3)
df3 <- read.csv("GreenSeaTurtleInjuries.csv", h=TRUE)
#filter out duplicates:
df3 <- df3 %>% distinct(ID, keep_all = TRUE)

#making Nature a factor:
class(df3$Nature)

df$Nature <- as.factor(df3$Nature)

#Table for each factor
NatureTable <- table(Nature)
BodyPartTable <- table(`Body Part`)
InjuryTypeTbale <- table(`Injury Type`)
InjuriesPerTurtleTable <- table(InjuriesPerTurtle)
InjuryStageTable <- table(`Injury Stage`)
SourceofInjuryTable <- table(Source)

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

#Probabilty and Significane tests:
