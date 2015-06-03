##This function reproduces the fourth plot for the Exploratory Data course.

plot4<-function()
{
    source('C:/Users/Araldo/Git/datasciencecoursera/ExData_Plotting1/readData1.R')
    data<-readData1()
    png(filename="plot4.png")
    par(mfrow=c(2,2))
    
    plot(data$DateTime, data$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
    lines(data$DateTime, data$Global_active_power)

    plot(data$DateTime, data$Voltage, type="n", ylab="Voltage", xlab="datetime")
    lines(data$DateTime, data$Voltage, col="black")

    plot(data$DateTime, data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
    lines(data$DateTime, data$Sub_metering_1, col="black")
    lines(data$DateTime, data$Sub_metering_2, col="red")
    lines(data$DateTime, data$Sub_metering_3, col="blue")
    legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))

    plot(data$DateTime, data$Global_reactive_power, type="n", ylab="Global_reactive_power", xlab="datetime")
    lines(data$DateTime, data$Global_reactive_power, col="black")

    dev.off()
}
