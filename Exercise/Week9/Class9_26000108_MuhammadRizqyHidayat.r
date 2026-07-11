# Week 9 Data Science Class
# Muhammad Rizqy Hidayat 26000108

# Handling Imbalance Data
install.packages("ROSE")
library(ROSE)

#import dataset containing 2 files; train (1000 obs.) and test (250 obs.)
data(hacide)

#check the structure of hacide.train – containing 3 variables
str(hacide.train)

#check the ‘cls’ variable in hacide.train
table(hacide.train$cls)

#chek the propotion of ‘cls’ variable in hacide.train
prop.table(table(hacide.train$cls))

#oversampling
data_balanced_over <- ovun.sample(cls ~ ., data = hacide.train, method =
                                    "over",N = 1960)$data
#check the data and proportion
table(data_balanced_over$cls)
prop.table(table(data_balanced_over$cls))

#undersampling
data_balanced_under <- ovun.sample(cls ~ ., data = hacide.train, method =
                                     "under", N = 40)$data
#check the data and proportion
table(data_balanced_under$cls)
prop.table(table(data_balanced_under$cls))

data(iris)

plot(iris$Sepal.Length,
 iris$Sepal.Width,
 col = iris$Species,
 pch = 19,
 main = "Iris Scatter Plot")

data()

data <- mtcars

data

# correlation test, anything affect x will also affect y vice versa.
x<- -10:10
y<-x*x
plot(x,y,xlab='x',ylab='y',col='red')

