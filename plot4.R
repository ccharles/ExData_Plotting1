## Generate four plots using data provided by shared.R and save it to
## "plot4.png":
##
##   - Global Active Power
##   - Voltage
##   - Energy Sub Metering
##   - Global Reactive Power

source("shared.R")
data <- GetPowerConsumptionData()  # Defined in "shared.R"

png(filename="plot4.png", width=480, height=480, units="px")

par(mfrow=c(2, 2))

with(data, {
  plot(Global_active_power, type="n", xlab="", xaxt="n",
       ylab="Global Active Power")
  lines(Global_active_power)
  DrawXAxis()  # Defined in "shared.R"

  plot(Voltage, type="n", xlab="datetime", xaxt="n")
  lines(Voltage)
  DrawXAxis()  # Defined in "shared.R"

  plot(Sub_metering_1, type="n", xlab="", xaxt="n", ylab="Energy sub metering")
  lines(Sub_metering_1)
  lines(Sub_metering_2, col="red")
  lines(Sub_metering_3, col="blue")

  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=c(1, 1), col=c("black", "red", "blue"), bty="n")
  DrawXAxis()  # Defined in "shared.R"

  plot(Global_reactive_power, type="n", xlab="datetime", xaxt="n")
  lines(Global_reactive_power)
  DrawXAxis()  # Defined in "shared.R"
})
