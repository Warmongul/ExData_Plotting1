library(dplyr)

load.data <- function(force.refresh = FALSE) {
  
  if (force.refresh | !exists("household.power.data")) {
    data <- read.table(
      "../data/household_power_consumption.txt", 
      sep=";", na.strings = "?", header = TRUE
    )
    data <- mutate(data, sample.time = as.POSIXct(x = paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))
    household.power.data <<- filter(data, Date %in% c("1/2/2007", "2/2/2007"))
  }
  
}
