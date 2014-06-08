## Sourcing R function to import dataset
source("import_data.R")

## Creating plot 1
plot1 <- function(data=NULL) {
          if(is.null(data))
                    data <- import_data()
          
          png("plot1.png", width=480, height=480)
          
          hist(data$Global_active_power,
               main="Global Active Power",
               xlab="Global Active Power (kilowatts)",
               ylab="Frequency",
               col="red")
          
          dev.off()
}