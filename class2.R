names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df = data.frame(names,gender,height,weight,age)
View(df)

df[1]
df[1,]
df[1:2]
df[1:2,]

df[c('gender','names')]

df$gender

df[df$names == "Mike",]

df[df$age>35,]

df[df$height>170 & df$weight>80,]

df[df$gender=="Male",]

df[df$height>170 & df$age<40,]

df[1:2]

newdf = rbind(df, data.frame(names = "Lina", gender = "Female", height = 156, weight = 56, age = 23 ))

View(df)

print(newdf)

View(newdf)

gender = c("Female", "Male", "Male","Female","Male")
height = c(160, 175, 173,156,169)
weight = c(49, 89, 77,56,81)
age = c(35, 36, 41,23, 28)
names =c("Carrol","Mike","John","Suuria","Malik")
df1 = data.frame(names,gender,height,weight,age)

states = c("Selangor","Perak","Melaka")
names = c("Carrol","John","Malik")
df2 = data.frame(names, states)

dfMerge = merge(df1, df2, by = "names", all= TRUE)

View(dfMerge)

newdf2 = newdf[-2,]

newdf5 = newdf[-2:0,]

newdf2 = newdf

View(newdf5)

newdf[1,"age"] <- 30

newdf[4, "height"] <- 152

install.packages("readr")
library("readr")

getwd()

data_cov <- read.csv ('C:/Project/my_covid.csv')

head(data_cov,5)

summary(data_cov)

names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
savedf = data.frame(names,gender,height,weight,age)

write.csv (savedf, 'C:/Project/my_covid.csv')

#creating a vector of integers having NAs.
a<-c(1:5, rep(NA,3),6:10)
a

sum(a)

b<-a[!is.na(a)]
b

sum(b)

#creating a vector of integers having NAs.
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a

#assigning 0 to NAs
a[is.na(a)]<-0
a

sum(a)

df <- read.csv('C:/Project/NAexample.csv')

is.na(df) #whole dataframe

is.na(df['VarA'])

mean(df$VarA)

mean(na.omit(df$VarA))