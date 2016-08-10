source('load_data.R')

plot1 <- function(force.refresh = FALSE) {
    
    load.data(force.refresh)
    
    png("plot1.png", width=480, height=480)
    hist(household.power.data$Global_active_power,
         main="Global Active Power",
         xlab="Global Active Power (kilowatts)",
         ylab="Frequency",
         col="red")
    dev.off()
    
}