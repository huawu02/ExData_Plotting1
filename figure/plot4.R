data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
rows<-data$Date=="1/2/2007" | data$Date=="2/2/2007"
data2<-data[rows,]

png("plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
plot(1:2880,as.numeric(as.character(data2$Global_active_power)),
     ylab = "Global Active Power",xlab = "",type="l",xaxt = "n")
axis(1,at = c(0,1440,2880),labels = c("Thu","Fri","Sat"))

plot(1:2880,as.numeric(as.character(data2$Voltage)),
     ylab = "Voltage",xlab = "",type="l",xaxt = "n")
axis(1,at = c(0,1440,2880),labels = c("Thu","Fri","Sat"))

plot(as.numeric(as.character(data2$Sub_metering_1)),type="l",xaxt="n",xlab = "", 
     ylim = c(0,38), ylab = "Energy sub metering")
lines(as.numeric(as.character(data2$Sub_metering_2)),col = 2)
lines(as.numeric(as.character(data2$Sub_metering_3)),col = 4)
legend(x = "topright",legend = c(colnames(data2)[c(7,8,9)]),lty=c(1,1,1),col=c(1,2,4),
       cex = 0.5, bty = "n")
axis(1,at = c(0,1440,2880),labels = c("Thu","Fri","Sat"))

plot(1:2880,as.numeric(as.character(data2$Global_reactive_power)),
     ylab = "Global reactive power",xlab = "",type="l",xaxt = "n")
axis(1,at = c(0,1440,2880),labels = c("Thu","Fri","Sat"))

dev.off()