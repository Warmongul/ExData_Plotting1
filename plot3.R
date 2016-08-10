source('load_data.R')

plot3 <- function(force.refresh = FALSE) {
  
  load.data(force.refresh)
  
  png("plot3.png", width=480, height=480)
  plot(household.power.data$sample.time, household.power.data$Sub_metering_1,
       type="l",
       xlab="", col="black",
       ylab="Energy sub metering")
  lines(household.power.data$sample.time, household.power.data$Sub_metering_2, col="red")
  lines(household.power.data$sample.time, household.power.data$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  dev.off()
  
}