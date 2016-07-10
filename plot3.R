twoday$Sub_metering_1 <- as.numeric(as.character(twoday$Sub_metering_1))
twoday$Sub_metering_2 <- as.numeric(as.character(twoday$Sub_metering_2))
twoday$Sub_metering_3 <- as.numeric(as.character(twoday$Sub_metering_3))
plot3 <- function(){
        plot(twoday$timestamp, twoday$Sub_metering_1, type="l", xlab="", 
             ylab="Energy Sub Metering")
        lines(twoday$timestamp, twoday$Sub_metering_2, col="Red")
        lines(twoday$timestamp, twoday$Sub_metering_3, col="Blue")
        legend("topright", col=c("Black", "Red", "Blue"), 
               c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), 
               lty=c(1,1), lwd=c(1,1))
        dev.copy(png, "plot3.png", width=480, height=480)
        dev.off()
}
plot3()

