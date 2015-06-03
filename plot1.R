##This function reproduces the first plot for the Exploratory Data course.

plot1<-function()
{
    source('C:/Users/Araldo/Git/datasciencecoursera/ExData_Plotting1/readData1.R')
    data<-readData1()
    png(filename="plot1.png")
    hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()
}

