#Problem 1

#install.packages("datasets")
library(datasets)

USArrests
#Answer: renamed USArrests to dat.us because it is easier to write and it is good practice to rewrite data for yourself so you can create your own data which can be replicated by another person if they use the original data 

dat.us <- USArrests
#USArrests renamed dat.us
head(dat.us)

#Problem 2

#makes stake names lowercase
dat.us$state <- tolower(rownames(USArrests))

dat.us$state

names(dat.us)

#Answer: The four variables are Murder, Assault, UrbanPop, Rape. 

#Problem 3

#Answer: Murder is a quantitative variable. 

#Answer: Murder is 

#Problem 4

#Answer

#Problem 5

dat.us$Murder

hist(dat.us$Murder, xlab= "Murders", ylab="Frequency", main= "Murder in the US", xlim=(c(0, 20)), ylim=(c(0, 15)))

#Problem 6

summary(dat.us$Murder)

#Answer: The mean for Murder is 7.788 and the median is 7.250. The mean is the amount that each subject would have if all of the values were added together and evenly distributed. If all 50 states had the same frequency of murders then it would be 7.788. The median is the middle value where exactly 50% of the values fall either above or below it. In the US, 50% of states have a murder frequency above 7.250 and the other 50% is below that. The median is highly robust because it is not greatly affected by outliers. The mean is the most common measure of central tendency but it is not robust because it will change based on the skewness of the distribution.  




