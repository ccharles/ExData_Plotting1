## Generate a plot of Global Active Power values using data provided by
## shared.R and save it to "plot2.png".

source("shared.R")
power.data <- GetPowerConsumptionData()  # Defined in "shared.R"

png(filename="plot2.png", width=480, height=480, units="px")

with(power.data, {
  plot(Global_active_power, type="n", xlab="", xaxt="n",
       ylab="Global Active Power (kilowatts)")
  lines(Global_active_power)
})

DrawXAxis()  # Defined in "shared.R"
