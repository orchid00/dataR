# Description: This is my first R project
# Author: Please type your name
# Date : Monday Dec 12, 2016


# 1. creating some objects

# create a numeric object by calculation
num <-  5 + 2
# create a character object by definition
name <- "Paula"
# create a logical object by definition
pet <- FALSE


# Function to list objects
ls()

# how to get help
?ls()

# 1. learn about class by reading the description
?class
# 2. use class on each of the objects created, one by one 
class(name)
class(num)
class(pet)

# conditionals
# equals == 
# not equal !=
# > greater than or >=
# < lower than or <=
# & and 
# | or 
# is.na()

# explore the function is.na
?is.na

is.na(NA)
is.na("")
is.na("missing")

# Create an object by grouping
?c
# create a row object with three items with the names of the
# people around you
row3 <- c("Wai Wai", "Jacqui", "Jill")

# craete a numeric - Integer vector from numbers 1 to 100
numbers <- 1:100
numbers <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9)
numbers <- 1:100
numbers

?length
# Size of vector
length(numbers)
length(row3)

class(numbers)
class(row3)

# create a logical vector
holidays <- c(FALSE, TRUE, FALSE)
class(holidays)
typeof(holidays)
is.vector(holidays)


# Downloading data from the internet
?download.file

download.file(url = "http://tiny.cc/RDEC12", 
              destfile = "data/rego.csv")


# read about the function read.csv

?read.csv
# read the data into an object called group
group <- read.csv(file = "data/rego.csv")

# useful functions to explore a data frame
?class
?names
?colnames
?rownames
?ncol
?nrow
?dim


class(group)
names(group)
colnames(group)
rownames(group)
ncol(group)
nrow(group)
dim(group)

# more detailed fucntions
?str
str(group)

?summary()
summary(group)

?table
table(group)

table(group$First_Name)

# min, max, mean
?min
?max
?mean

min(group$Height)
max(group$Height)
mean(group$Height)


# how to clean my environment
#?rm
# delete name 
#rm(name)
# check objects
#ls()
# delete row
#rm(row3)
# check objects
#ls()

# remove all of the objects
#rm(list = ls())
