library(sqldf)

data <- read.csv.sql("household_power_consumption.txt", 
                     sql = "SELECT * from file WHERE 
                     Date = '1/2/2007' OR Date = '2/2/2007' ", sep = ";")
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")
dev.off()