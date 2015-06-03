##This function reproduces the second plot for the Exploratory Data course.

plot2<-function()
{
    source('C:/Users/Araldo/Git/datasciencecoursera/ExData_Plotting1/readData1.R')
    data<-readData1()
    png(filename="plot2.png")
    plot(data$DateTime, data$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
    lines(data$DateTime, data$Global_active_power)
    dev.off()
}