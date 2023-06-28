# Assignment 4.2
# Name: Hamedaninia, Alex
# Date: 6/27/23

# Given a dataset, answer a set of questions about the data

# check the directory and load the file
dir()
df <- read.csv('Documents/GitHub/dsc520/data/scores.csv')

# What are the observational units in this study?
df # reading the file to understand
# units are count, score, and section ('Sports' or 'Regular')

# Identify the variables mentioned in the narrative paragraph
# and determine which are categorical and quantitative?
# -> count and score and quantitative, section is categorical

# create a variable to hold the regular section, and another for sports
df_regular = df[df$Section == 'Regular',]
df_sports = df[df$Section == 'Sports',]

# plot each sections scores and num of students achieving that score
# label accordingly
plot(x=df_regular$Score, y=df_regular$Count, main='Scores of students in Regular section', xlab='Score', ylab='Count', pch=23)
plot(x=df_sports$Score, y=df_sports$Count, main='Scores of students in Sports section', xlab='Score', ylab='Count', pch=15)
points(df_sports$Score, df_regular$Count, col='green', lwd=2)
points(df_sports$Score, df_sports$Count, col='blue', lwd=1)

'''

ANALYSIS QUESTIONS:
1. Comparing and contrasting the point distributions between the two section, looking at both tendency and consistency: Can you say that one section tended to score more points than the other? Justify and explain your answer.

There seems to be a higher tendency for the sports section, but they are both very similar. There seems to be a higher count on the upper end for the sports scores, while the regular section is more dispersed.

2. Did every student in one section score more points than every student in the other section? If not, explain what a statistical tendency means in this context.

Not every student, but most students in the sports section scored a bit higher than those in the regular section. They tend to score higher in every section.

3. What could be one additional variable that was not mentioned in the narrative that could be influencing the point distributions between the two sections?

It could be that a specific major (sports medicine or some other) that primarily took one section while the other may have been a more gen-ed class, where the students are not as invested in the study. It could have also been a higher level class where it was the same scenario and the students are more invested. 

'''
