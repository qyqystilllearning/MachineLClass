# 1.Creating DataFrame

# Create vectors for each column
Name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender <- c("Female", "Male", "Female", "Male", "Female")
Age <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)

# Combine into a data frame
students <- data.frame(Name, Gender, Age, Test_Score, Attendance)

# View the data frame
print(students)

View(students)

# 2. Access and Subset Data

#Display the Test_Score column using both df['Test_Score'] and df$Test_score.

students["Test_Score"]

students$Test_Score
#Display the first 3 rows of the data frame

students[]
#Display students who are older than 22
#Display female students with Test_Score greater than 80
