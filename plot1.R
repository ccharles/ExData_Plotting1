## Generate a histogram of Global Active Power values using data provided by
## get_data.R and save it to "plot1.png".

## See the file "get_data.R" for the data reading code, which is reused for
## all four plots.
source("get_data.R")
data <- GetPowerConsumptionData()

png(filename="plot1.png", width=480, height=480, units="px")

hist(data$Global_active_power, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency")
