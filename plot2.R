source('load_data.R')

plot2 <- function(force.refresh = FALSE) {
  
  load.data(force.refresh)
  
  png("plot2.png", width=480, height=480)
  plot(household.power.data$sample.time, household.power.data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  dev.off()
  
}