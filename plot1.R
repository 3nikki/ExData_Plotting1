install.packages("dplyr")
install.packages("lubridate")
library(dplyr)
library(lubridate)

energy_df<- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
energy_df <- transform(energy_df, Date = as.Date(Date,"%d/%m/%Y"))
startDate<- as.Date("01/02/2007","%d/%m/%Y")
endDate<- as.Date("02/02/2007","%d/%m/%Y")
energy_df <- filter(energy_df, Date==startDate | Date == endDate)
 hist(energy_df$Global_active_power,col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
 dev.copy(png, file="plot1.png")
 dev.off()
  