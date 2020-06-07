sub_data<-function(df=household_power_consumption)
{
  d1<- dmy("1-2-2007")
  d2<- dmy("2-2-2007")
  
  p1_sub<-subset(x = df, Date==d1 | Date==d2)
}
draw_plot4<-function(df=household_power_consumption)
{ plotdata<-sub_data(df=household_power_consumption)
plotdata$datetime<-as.POSIXct(paste(plotdata$Date,plotdata$Time))
png(filename = "plot4.png",width = 480,height = 480)
par(mfrow= c(2,2))
plot(plotdata$datetime,plotdata$Global_active_power,type = "l", ylab = "Global Active Power")
plot(plotdata$datetime,plotdata$Voltage, type = "l", xlab="datetime",ylab = "Voltage")
plot(plotdata$datetime,plotdata$Sub_metering_1, type = "l", ylab = "Energy sub metering")
lines(plotdata$datetime,plotdata$Sub_metering_2, type = "l", col="red")
lines(plotdata$datetime,plotdata$Sub_metering_3,type = "l",col="blue")
legend("topright", legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),pch=c(19,19,19),col = c("black","red","blue") )
plot(plotdata$datetime,plotdata$Global_reactive_power,type="l",xlab = "datetime",ylab = "Global Reactive Power")
dev.off()

}