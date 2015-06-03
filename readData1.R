##function that downloads the household power consumption data, unzips it and reads the data in a table 
##(thereby skipping everything except the data for two days: 1-2-2015/2-2-2015). This data is returned by the function.

readData1<-function()
{
    readData<-TRUE;
    dataUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    subdir<-"C:/Users/Araldo/Git/datasciencecoursera/ExData_Plotting1"  ##assume the directory is already created
    filename<-"household_power_consumption"
    if(readData)
        download.file(dataUrl, paste0(subdir, "/", filename, ".zip"))
    setwd(subdir)
    if(file.exists(paste0(filename, ".txt"))==FALSE)
        unzip(paste0(filename, ".zip"))
    data5 <- read.table(paste0(filename, ".txt"), header = TRUE, nrows = 5, na.strings = "?", sep=";")
    classes <- sapply(data5, class)
    data <- read.table(paste0(filename, ".txt"), header = TRUE, colClasses = classes, na.strings = "?", skip = 66636, nrows = 2880, sep=";")
    names(data)<-c("Date","Time")
    data<-cbind(data,strptime(paste0(data$Date, data$Time), "%d/%m/%Y%H:%M:%S"))
    names(data)<-c("Date","Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                   "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3", "DateTime")
    data
}