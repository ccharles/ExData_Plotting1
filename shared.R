## Common functions for all four parts of Course Project 1 in the Coursera
## Exploratory Data Analysis course.
##
##     https://www.coursera.org/course/exdata

GetPowerConsumptionData <- function() {
  ## Load and return data for Course Project 1.
  ##
  ## The zip file that was used to create the graphs in this repository was
  ## retrieved on January 10, 2014 at 14:55 (America/Toronto) and has the
  ## following sha256 checksum:
  ##
  ##     9f84b46ade8a2d8e1286ec4b2b6c2987a45a755c59f263be3b3b3d10dfbda3ff
  ##
  ## Args:
  ##   None.
  ##
  ## Returns:
  ##   A data frame (2880 x 9) containing household power consumption data for
  ##   February 1 and 2, 2007.

  data.dir <- "data"
  data.file <- "exdata-data-household_power_consumption.zip"
  data.file.path <- file.path(data.dir, data.file)

  data.file.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  file.from.zip <- "household_power_consumption.txt"

  dir.create(data.dir, showWarnings=FALSE)
  if (file.exists(data.file.path)) {
    print("Using existing data file")
  } else {
    print("Downloading data file")
    download.file(data.file.url, data.file.path, method="curl")
  }

  data <- read.csv(unz(data.file.path, file.from.zip), sep=";", na.strings="?",
                  colClasses=c("character", "character", rep("numeric", 7)))
  subset(data, Date %in% c("1/2/2007", "2/2/2007"))
}


DrawXAxis <- function() {
  ## Draw the X axis used in plots 2, 3 and 4
  ##
  ## This axis shows the values Thu, Fri and Sat instead of numbers at values
  ## 0, 1440 and 2880.
  ##
  ## Args:
  ##   None.
  ##
  ## Returns:
  ##   The numeric vector c(0, 1440, 2880)

  axis(1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
}
