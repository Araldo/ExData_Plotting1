##This function reproduces the third plot for the Exploratory Data course.

plot3<-function()
{
    source('C:/Users/Araldo/Git/datasciencecoursera/ExData_Plotting1/readData1.R')
    data<-readData1()
    png(filename="plot3.png")
    plot(data$DateTime, data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
    lines(data$DateTime, data$Sub_metering_1, col="black")
    lines(data$DateTime, data$Sub_metering_2, col="red")
    lines(data$DateTime, data$Sub_metering_3, col="blue")
    legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))
    dev.off()
}
plot3()