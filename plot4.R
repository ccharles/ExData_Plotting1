source("get_data.R")
data <- GetPowerConsumptionData()

png(filename="plot4.png", width=480, height=480, units="px")

DrawXAxis <- function() {
  axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
}

par(mfrow=c(2, 2))

with(data, {
  plot(Global_active_power, type="n", xlab="", xaxt="n",
       ylab="Global Active Power")
  lines(Global_active_power)
  DrawXAxis()

  plot(Voltage, type="n", xlab="datetime", xaxt="n")
  lines(Voltage)
  DrawXAxis()

  plot(Sub_metering_1, type="n", xlab="", xaxt="n", ylab="Energy sub metering")
  lines(Sub_metering_1)
  lines(Sub_metering_2, col="red")
  lines(Sub_metering_3, col="blue")

  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=c(1, 1), col=c("black", "red", "blue"), bty="n")
  DrawXAxis()

  plot(Global_reactive_power, type="n", xlab="datetime", xaxt="n")
  lines(Global_reactive_power)
  DrawXAxis()
})
