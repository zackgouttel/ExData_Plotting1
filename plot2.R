sub_data<-function(df=household_power_consumption)
{
  d1<- dmy("1-2-2007")
  d2<- dmy("2-2-2007")
  
  p1_sub<-subset(x = df, Date==d1 | Date==d2)
}
draw_plot2<-function(df=household_power_consumption)
{ plotdata<-sub_data(df=household_power_consumption)
  plotdata$datetime<-as.POSIXct(paste(plotdata$Date,plotdata$Time))
  png(filename = "plot2.png",width = 480,height = 480)
plot(plotdata$datetime,plotdata$Global_active_power,type = "l",ylab = "Global Active Power (Kilowatts)")
dev.off()
}