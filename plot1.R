## Generate a histogram of Global Active Power values using data provided by
## shared.R and save it to "plot1.png".

source("shared.R")
power.data <- GetPowerConsumptionData()  # Defined in "shared.R"

png(filename="plot1.png", width=480, height=480, units="px")

with(power.data, {
  hist(Global_active_power, col="red", main="Global Active Power",
       xlab="Global Active Power (kilowatts)", ylab="Frequency")
})
