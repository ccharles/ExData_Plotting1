source("get_data.R")
data <- GetPowerConsumptionData()

png(filename="plot3.png", width=480, height=480, units="px")

plot(data$Sub_metering_1, type="n", xlab="", xaxt="n", ylab="Energy sub metering")
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

lines(data$Sub_metering_1)

lines(data$Sub_metering_2, col="red")

lines(data$Sub_metering_3, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1, 1), col=c("black", "red", "blue"))
