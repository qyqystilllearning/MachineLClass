# Exercise Week 8 Data Science Class
# Hidayat Muhammad Rizqy  26000108

# Import and initialize library

student_data<- read.csv("C:\\Project\\student_data.csv")
library(dplyr)
library(readr)

# 1. Show the details of students whose final_exam_mark is greater than 80%.

high_scorers <- student_data %>% filter(final_exam_mark > 80)
View(high_scorers)

# 2. Arrange the dataset in ascending order based on course_work_mark.

sorted_data <- student_data %>% arrange(coursework_mark)
View(sorted_data)

# 3. Display only the student name and final_exam_mark attributes from the dataset.

selected_attributes <- student_data %>% select(student_name, final_exam_mark)
View(selected_attributes)

# 4. Specify the number of rows and columns in the dataset.

nrow(student_data) # Returns the number of rows
ncol(student_data) # Returns the number of columns

# 5. Explain how to obtain the details of the given dataset using R. Show the dataset details based on the R query you execute.

glimpse(student_data)
summary(student_data)

# 6. How can you identify and detect outliers in the given dataset? Explain and demonstrate using R.

# Calculate the Quartiles and IQR
first_q <- quantile(student_data$final_exam_mark, 0.25)
third_q <- quantile(student_data$final_exam_mark, 0.75)
iqr_val <- IQR(student_data$final_exam_mark)

# Calculate boundaries
le <- first_q - 1.5 * iqr_val
ue <- third_q + 1.5 * iqr_val

# View the boundaries
le
ue