## Sourcing R function to import dataset
source("import_data.R")

## Create plot 4 composed by 4 charts
plot4 <- function(data=NULL) {
          if(is.null(data))
                    data <- import_data()
          
          png("plot4.png", width=480, height=480)
          
          par(mfrow=c(2,2))
          
          ## Plotting Chart 1
          plot(data$Time, data$Global_active_power,
               type="l",
               xlab="",
               ylab="Global Active Power")
          
          ## Plotting Chart 2
          plot(data$Time, data$Voltage, type="l",
               xlab="datetime", ylab="Voltage")
          
          ## Plotting Chart 3
          plot(data$Time, data$Sub_metering_1, type="l", col="black",
               xlab="", ylab="Energy sub metering")
          lines(data$Time, data$Sub_metering_2, col="red")
          lines(data$Time, data$Sub_metering_3, col="blue")
          legend("topright",
                 col=c("black", "red", "blue"),
                 c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                 lty=1,
                 box.lwd=0)
          
          ## Plotting Chart 4
          plot(data$Time, data$Global_reactive_power, type="n",
               xlab="datetime", ylab="Global_reactive_power")
          lines(data$Time, data$Global_reactive_power)
          
          dev.off()
          
}