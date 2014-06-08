## Importing data from text file household_power_consumption.txt
import_data <- function() {
          txtfile <- "household_power_consumption.txt"
          dtfr <- read.table(txtfile,
                           header=TRUE,
                           sep=";",
                           colClasses=c("character", "character", 
                                        "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                           na="?")
          
          ## converting the fields date and time to Date/Time class using strptime() and as.Date()
          dtfr$Time <- strptime(paste(dtfr$Date, dtfr$Time), "%d/%m/%Y %H:%M:%S")
          dtfr$Date <- as.Date(dtfr$Date, "%d/%m/%Y")
          
          ## selecting data from with dates 2007-02-01 and 2007-02-02
          dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
          data <- subset(dtfr, Date %in% dates)
          
          
          return(data)
          
}