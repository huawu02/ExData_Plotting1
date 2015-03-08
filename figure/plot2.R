data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
rows<-data$Date=="1/2/2007" | data$Date=="2/2/2007"
data2<-data[rows,]

png("plot2.png",width = 480, height = 480)
plot(1:2880,as.numeric(as.character(data2$Global_active_power)),
     ylab = "Global Active Power (kilowatts)",xlab = "",type="l",xaxt = "n")
axis(1,at = c(0,1440,2880),labels = c("Thu","Fri","Sat"))
dev.off()