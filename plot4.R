## Read the data from the household_power_consumption.txt file

data <- read.table("household_power_consumption.txt",header= TRUE,sep =";",stringsAsFactors = FALSE,dec= ".")

## Subset the data to get the power consumption of 1st and 2nd day of Febuary 2007

subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Change the Date and Time variable to Date and Time class using strptime function

datetime <- strptime(paste(subsetdata$Date,subsetdata$Time,sep = " "),"%d/%m/%Y %H:%M:%S"

## Change the Global_active_power column to numeric type  

globalactivepower <- (as.numeric(subsetdata$Global_active_power))

## Change the Voltage column to numeric type 

voltage <- as.numeric(subsetdata$Voltage)

## Change the Global_reactive_power to numeric type

globalreactivepower <- as.numeric(subsetdata$Global_reactive_power)

## Change the Sub_metering_1, Sub_metering2, Sub_metering_3  column to numeric type

submetering1 <- as.numeric(subsetdata$Sub_metering_1)

submetering2 <- as.numeric(subsetdata$Sub_metering_2)

submetering3 <- as.numeric(subsetdata$Sub_metering_3)
 
## Indicate that four graphs will be created rowwise

par(mfrow =c(2,2))

## Plot Global_active_power against datetime

plot(datetime,globalactivepower,type = "l",xlab = "",ylab = "Global Active Power(kilowatts)")

## Plot Voltage against datetime

plot(datetime,voltage,type = "l",xlab = "datetime",ylab= "Voltage")
 
## Plot Sub_metering_1 , Sub_metering_2, Sub_metering_3  against datetime 

plot(datetime,submetering1,type="l",ylab = "Energy Submetering ", xlab = "")

lines(datetime,submetering2,type="l",col = "red")

lines(datetime,submetering3,type="l",col = "blue")

## Provide the legend at the topright corner of graph

legend ("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))

## Plot Global_reactive_power against datetime

 plot(datetime,globalreactivepower,type="l",xlab="datetime",ylab="Global_reactive_power")

## Save plot generated in .png  format



