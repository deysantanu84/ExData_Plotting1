library(sqldf)

data <- read.csv.sql("household_power_consumption.txt", 
                     sql = "SELECT * from file WHERE 
                     Date = '1/2/2007' OR Date = '2/2/2007' ", sep = ";")
datetime <- strptime(paste(data$Date, data$Time, sep=" "), 
                     "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()