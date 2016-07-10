twoday <- transform(twoday, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S") #convert date time format
plot2 <- function(){
        plot(twoday$timestamp, twoday$Global_active_power, type="l", xlab="", 
             ylab = "Global Active Power (kilowatts)") #second plot according to assignment
        dev.copy(png, "plot2.png", width=480, height=480)
        dev.off()
}
plot2()
