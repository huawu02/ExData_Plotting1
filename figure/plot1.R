data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
rows<-data$Date=="1/2/2007" | data$Date=="2/2/2007"
data2<-data[rows,]

png("plot1.png",width = 480, height = 480)
hist(as.numeric(as.character(data2$Global_active_power)), main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()