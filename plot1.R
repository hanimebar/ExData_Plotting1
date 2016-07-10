if(!file.exists("./datasciencestuff")){dir.create("./datasciencestuff")}
fileUrl <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
temp <- tempfile()
download.file(fileUrl, temp)
data <- unzip(temp)
unlink(temp)
hpc <- read.table(data, header=TRUE, sep=";")
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y") # after going through the text file, set the date format
twoday <- hpc[(hpc$Date=="2007-02-01") | (hpc$Date=="2007-02-02"),] #select the dates to focus on based on the assignment
twoday$Global_active_power <- as.numeric(as.character(twoday$Global_active_power)) #look at data within the file
plot1 <-function(){
        hist(twoday$Global_active_power, main="Global Active Power", col="Red", 
             xlab="Global Active Power (kilowatts)", ylab="Frequency") #create the histogram
        dev.copy(png, file="plot1.png", width= 480, heght=480)
        dev.off()}
plot1()
