## Generate a plot of Energy Sub Metering values using data provided by
## shared.R and save it to "plot3.png".

source("shared.R")
data <- GetPowerConsumptionData()  # Defined in "shared.R"

png(filename="plot3.png", width=480, height=480, units="px")

plot(data$Sub_metering_1, type="n", xlab="", xaxt="n", ylab="Energy sub metering")
DrawXAxis()  # Defined in "shared.R"

lines(data$Sub_metering_1)

lines(data$Sub_metering_2, col="red")

lines(data$Sub_metering_3, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1, 1), col=c("black", "red", "blue"))
