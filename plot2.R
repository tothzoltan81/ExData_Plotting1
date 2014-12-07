setwd("d:/R_files/CoURSERA")
data_household<-read.csv('household_power_consumption.txt',header=T, sep=";", dec=".", na.strings=c("?"))
data_household2<-data_household[66637:69517,]
datetime<-as.POSIXct(paste(data_household2$Date,data_household2$Time), format="%d/%m/%Y %H:%M:%S")
data_household3<-cbind(data_household2,datetime)
remove(datetime)
png(filename = "plot2.png", width = 480, height = 480)
with(data_household3,plot(datetime,Global_active_power,ylab="Global Active Power (kilowatts)",xlab="", type="l"))
dev.off()