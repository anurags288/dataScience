#import library
library("stringi")

#Question 1.a
Lcase <- stri_rand_strings(10, length = 1, pattern = "[a-z]")
print("#Question 1(a)")
Lcase
sort(Lcase)

#Question 1.b
Lcase2 <- stri_rand_strings(5, length = 1, pattern = "[a-z]")
print("#Question 1(b)")
Lcase2
Ucase <- stri_rand_strings(5, length = 1, pattern = "[A-Z]")
Ucase

allCase <- c(Lcase2, Ucase)
allCase
sort(allCase)




#Question 2 
dairy <- read.table("q2.txt", header = TRUE, sep = ",")
dairy <- as.data.frame(dairy)
summary(dairy)



#Question 3
#import library
library("ggplot2")

#import dataset
rainfall <- read.csv("q3.csv")

#using ggplot
p <- ggplot(data = rainfall, aes(x = ANNUAL.RAINFALL, y = YEAR, colour = SUBDIVISION))
p
p+geom_point()



#Question 4
#import dataset
expenditure <- read.csv("q4.csv")
expenditure

#simple pie chart
pie(table(expenditure$Household.spending.per.month))

#adding labels
labels <- expenditure$Category
expense <- expenditure$Household.spending.per.month
pie(expense, labels = labels)





#Question 5.a
result <- rnorm(100, mean = 100, sd = 5)
result

#Question 5.b
hist(result, col = "Black", border = "Red")
boxplot(result)

#Question 5.c
summary(result)

#Question 5.d
#Accepts the mu value because the p-value is greater than 0.05
t.test(result, mu = 100)

#Question 5.e
#Rejects the mu value because the p-value is less than 0.05
t.test(result, mu = 90)






#import dataset
Rainfall10days <- read.csv("q6.csv")

#Question 6(a)
Subset <- subset(Rainfall10days, Rainfall10days$Rainfall > 20)
Subset

#Question 6(b)
atleastFour <- as.vector(Rainfall10days$Rainfall)
atleastFour

mean4 <- 0
for (i in atleastFour) {
  if(i >= 4){
    mean4 = mean4 + i
  }
}
mean4 <- mean4/10
mean4

#Question 6(c)
Subset1 <- subset(Rainfall10days, Rainfall10days$Rainfall == 0 | Rainfall10days$Rainfall == 0.6)
Subset1






#Question 7
#generate n random numbers
n <- readline("Enter a number:")

#generating n lengths
length <- sample(1:n, n, replace = TRUE)
length

#generating n diameters
diameter <- sample(1:n, n, replace = TRUE)
diameter

#Question 7(a)
cor(length, diameter)

#Question 7(b)
volume <- 0
for(i in 1:10){
  volume[i] <- length[i]*3.14*(diameter[i]/2)*(diameter[i]/2)
  
}
volume

#Question 7(c)
mean(volume)
sd(volume)
sd(volume)*100/mean(volume)

#Question 7(d)
volume2 <- 0
for (i in 1:10) {
  volume2[i] <- length[i]*3.14*(diameter[i]/2)*(diameter[i]/2)*1000
}
volume2

mean(volume2)
sd(volume2)
sd(volume2)*100/mean(volume2)








