# Week 8 Data Science Class
# Muhammad Rizqy Hidayat 26000108

library(dplyr)

library(readr)

student_data<- read.csv("C:\\Project\\student_data.csv")

# Show student fail data with final_exam_mark < 40
Student_fail<- Student_fail<- student_data[student_data$final_exam_mark< 40,] 

View(Student_fail)

Student_fail<- student_data %>% filter(final_exam_mark< 40)

mydata1<- student_data %>% filter(final_exam_mark > 40) %>% arrange(desc(final_exam_mark))
View(mydata1)

mydata1<-student_data %>% filter(final_exam_mark> 40) %>% arrange(desc(final_exam_mark))
View(mydata1)

mydata2 <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydata2)

glimpse(student_data)

mydata4 = student_data%>% mutate(Total_Mark=(coursework_mark + final_exam_mark/200*100))
View(mydata4)
glimpse(mydata4)

# Descriptive Statistics


data <- iris
                                              
head(iris,10)

tail(iris)

str(data)

min(data$Sepal.Length) #this produces 4.3
max(data$Sepal.Length) #this produces 7.9

range(data$Sepal.Length)

range(data$Sepal.Length)[1] #this produces 4.3
range(data$Sepal.Length) [2] #this produces 7.9

range_val <- range(data$Sepal.Length)
range_val[1]
range_val[2]

sd(data$Sepal.Length) #this produces 0.8280661
var(data$Sepal.Length) #this produces 0.6856935

mean(data$Sepal.Length) #this produces 5.843333
median(data$Sepal.Length) #this produces 5.8

summary(data)

summary(data$Sepal.Length)

A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)

quantile(A)

sort(A)

quantile(A,0.25)

quantile(A,0.75)

IQR(A)

nrow(data)
nrow(data["Sepal.Length"])

ncol(data)

sum(is.na(data$Sepal.Length))

sum(data$Sepal.Length<0)

hist(iris$Sepal.Length,main = "Histogram of Sepal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black"
     )

boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length (cm)",
        col = c("lightgreen", "lightpink",
                "lightyellow"))
     
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = as.numeric(iris$Species),
     pch = 19)

legend("topleft",
       legend = levels(iris$Species),
       col = 1:3,
       pch = 19)

data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")

View(data)

first_q<-quantile(data,0.25) #this is 26
inter_q<-quantile(data,0.50) #this is 31.75
third_q<-quantile(data,0.75)

iqr<-IQR(data) #this produces 5.75

# state the lower extreme and upper extreme

le<-first_q - 1.5 * iqr #this produces 17.375

ue<-third_q + 1.5 * iqr #this produces 40.375

# Handling outlier
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new

boxplot(data_new, main = "Handling Outlier Boxplot")

