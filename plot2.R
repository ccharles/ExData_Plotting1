## Generate a plot of Global Active Power values using data provided by
## get_data.R and save it to "plot2.png".

## See the file "get_data.R" for the data reading code, which is reused for
## all four plots.
source("get_data.R")
data <- GetPowerConsumptionData()

png(filename="plot2.png", width=480, height=480, units="px")

plot(data$Global_active_power, type="n", xlab="", xaxt="n",
     ylab="Global Active Power (kilowatts)")
lines(data$Global_active_power)
axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
