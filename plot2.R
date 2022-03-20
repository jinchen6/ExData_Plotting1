# plot2.R
oriData <- "./data/household_power_consumption.txt"
oriDataRead <- read.table(oriData,header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
Data <- oriDataRead[oriDataRead$Date %in% c("1/2/2007","2/2/2007") ,]
dateTime <- strptime(paste(Data$Date, Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 
