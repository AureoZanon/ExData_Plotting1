## Sourcing R function to import dataset
source("import_data.R")

## Creating plot 2
plot2 <- function(data=NULL) {
          if(is.null(data))
                    data <- import_data()
          
          png("plot2.png", width=480, height=480)
          
          plot(data$Time, data$Global_active_power,
               type="l",
               xlab="",
               ylab="Global Active Power (kilowatts)")
          
          dev.off()
}