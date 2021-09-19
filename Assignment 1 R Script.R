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
class(dat.us$Murder)
typeof(dat.us$Murder)
?typeof
#Answer: Murder is numeric

#Problem 4

summary(dat.us)
View(dat.us)
frequency(dat.us)
#Answer: The dataset contains the data of murder, assault, rape and urbanpop from all 50 US states. The numbers represent the frequency of arrests for one of the four variables in a state during the time frame that the data was collected.

#Problem 5

dat.us$Murder

?hist

hist(dat.us$Murder, xlab= "Murders", ylab="Frequency", main= "Murder in the US", xlim=(c(0, 20)), ylim=(c(0, 13)), col="red", breaks= 10)

#Problem 6

summary(dat.us$Murder)

#Answer: The mean for Murder is 7.788 and the median is 7.250. The mean is the amount that each subject would have if all of the values were added together and evenly distributed. If all 50 states had the same frequency of arrests for murders then it would be 7.788. The median is the middle value where exactly 50% of the values fall either above or below it. In the US, 50% of states have an arrest for murder frequency above 7.250 and the other 50% is below that. The median is highly robust because it is not greatly affected by outliers. The mean is the most common measure of central tendency but it is not robust because it will change based on the skewness of the distribution. A quartile indicates an interval that contains 25% or a quarter of the data.The first quartile for "Murder" is 4.075 which means that 25% of the "Murder" data falls below 4.075 and the 3rd quartile is 11.250 which means that 25% of US states have a frequency of arrests for murder that is higher than 11.250. R gives you the 1st and 3rd quartile because those values are useful in determining the interquartile range (IQR). The IQR is the central half which means that 50% of the data falls within the 1st and 3rd quartile. In a box plot, values 1.5 IQRs above or below the tails are considered outliers.  

#Problem 7

hist(dat.us$Assault, xlab= "Assaults", ylab="Frequency", main= "Assault in the US", xlim=(c(0, 350)), ylim=(c(0, 15)), col="blue", breaks=10)

hist(dat.us$Rape, xlab= "Rapes", ylab="Frequency", main= "Rape in the US", xlim=(c(0, 50)), ylim=(c(0, 15)), col="green", breaks=10)

par(mfrow=c(3,1))

hist(dat.us$Murder, xlab= "Murders", ylab="Frequency", main= "Murder in the US", xlim=(c(0, 20)), ylim=(c(0, 13)), col="red", breaks= 10)

hist(dat.us$Assault, xlab= "Assaults", ylab="Frequency", main= "Assault in the US", xlim=(c(0, 350)), ylim=(c(0, 15)), col="blue", breaks=10)

hist(dat.us$Rape, xlab= "Rapes", ylab="Frequency", main= "Rape in the US", xlim=(c(0, 50)), ylim=(c(0, 15)), col="green", breaks=10)

dat.us$Assault
dat.us$Rape
?par

#Answer: Command par is used to set parameters. The mfrow input allows you to create an array to plot multiple graphs on one window. The command par(mfrow=c(3,1)) allows three graphs to be plotted in three rows. 

#Answer: When the histograms are plotted together it is easier to compare the skewness and spread of each plot. 

#Problem 8

install.packages("maps")

install.packages("ggplot2")

library('maps') 
library('ggplot2') 

ggplot(dat.us, aes(map_id=state, fill=Murder)) + 
  geom_map(map=map_data("state")) + 
  expand_limits(x=map_data("state")$long, y=map_data("state")$lat)

#Answer:the lines library('maps') and library('ggplot2') are pulling from the packages that were installed. The line ggplot(dat.us, aes(map_id=state, fill=Murder)) is creating a ggplot with the USArrests dataset. The plot is set with an aesthetic of a map with the US states. Each state is filled in with its respective murder arrest data. The line geom_map(map=map_data("state")) contains the map coordinates for each US state.The last line  expand_limits(x=map_data("state")$long, y=map_data("state")$lat) ensures that the limits of the plot include a single value for all plots. The x and y axis of this plot contains the value of "state" from the map data. The x axis is longitude and the y axis is latitude. Together this code creates a map of the US with each state filled in with its value for murder arrests.The darker blue indicates that the murder arrest frequency is 5 and below and the light blue indicates that it is 15 and above. 

?ggplot
?geom_map
?expand_limits
