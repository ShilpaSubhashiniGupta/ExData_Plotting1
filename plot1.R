## Read the data from the household_power_consumption.txt file

data <- read.table("household_power_consumption.txt",header= TRUE,sep =";",stringsAsFactors = FALSE,dec= ".")

## Subset the data to get the power consumption of 1st and 2nd day of Febuary 2007

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Change the Date and Time variable to Date and Time class using strptime function

datetime <- strptime(paste(subsetdata$Date,subsetdata$Time,sep = " "),"%d/%m/%Y %H:%M:%S")

## Change the Global_Active_Power column to numeric type 

globalactivepower <- (as.numeric(subsetdata$Global_active_power))

## Plot Global active Power against datetime 

plot(datetime,globalactivepower,type = "l",xlab = "",ylab = "Global Active Power(kilowatts)"

## Save plot generated in .png  format



