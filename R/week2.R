# Import and Labeling
rt_df<-read.csv(file= "~/psy8960-week2/data/week2.csv",header=TRUE)
rt_df$condition <- factor(rt_df$condition, levels = c("A","B"), labels = c("Control", "Experimental"))
rt_df$gender <- factor(rt_df$gender, levels = c("M","F","N"), labels = c("Male","Female", "Nonbinary") )

# Analysis 
(mean(rt_df$rt))
rt_f_df<- subset(rt_df, subset = gender == "Female")
hist(rt_f_df$rt)
datasets<-list(rt_df,rt_f_df)
datasets[[1]][2] #this results in a data set. If I switched it with [[2]] at the end it extracts it as a vector
# [[]] means extract
# [] means subset
# $ means extract
