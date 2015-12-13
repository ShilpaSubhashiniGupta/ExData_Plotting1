## Read the data from the household_power_consumption.txt file

data <- read.table("household_power_consumption.txt",header= TRUE,sep =";",stringsAsFactors = FALSE,dec= ".")

## Subset the data to get the power consumption of 1st and 2nd day of Febuary 2007

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Change the Global_Active_Power column to numeric type 

globalactivepower(as.numeric(subsetdata$Global_active_power))

## Histogram to depict the Global_active_power frenquency

hist(globalactivepower,col= "red",main= "Global Active Power",xlab = "Global Active Power (kilowatts)")

## Save histogram  generated in .png  format



