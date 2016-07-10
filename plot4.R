twoday$Voltage<-as.numeric(as.character(twoday$Voltage))
twoday$Global_reactive_power <- as.numeric(as.character(twoday$Global_reactive_power))
plot4 <- function() {
        par(mfrow=c(2,2))
        plot(twoday$timestamp, twoday$Global_active_power, type="l", xlab="", 
             ylab="Global Active Power")
        plot(twoday$timestamp, twoday$Voltage, type="l", xlab="DateTime", 
             ylab="Voltage")
        plot(twoday$timestamp, twoday$Sub_metering_1, type="l", xlab="", 
             ylab="Energy Sub Metering")
        lines(twoday$timestamp, twoday$Sub_metering_2, col= "Red")
        lines(twoday$timestamp, twoday$Sub_metering_3, col="Blue")
        legend("topright", col=c("black", "red", "blue"), 
               c("Sub_metering_1", "sub_metering_2", "sub_meterin_3"), 
               lty=c(1,1), bty="n", cex=.5)
        plot(twoday$timestamp, twoday$Global_reactive_power, type="l", 
             xlab="DateTime", ylab="Global Reactive Power")
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
}
plot4()
