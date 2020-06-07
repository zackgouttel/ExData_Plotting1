#household_power_consumption <- read.csv("~/GitHub/ExData_Plotting1/household_power_consumption.txt", sep=";")
library(lubridate)

sub_data<-function(df=household_power_consumption)
{
  d1<- dmy("1-2-2007")
  d2<- dmy("2-2-2007")
  
  p1_sub<-subset(x = df, Date==d1 | Date==d2)
}
draw_plot1<-function(df=household_power_consumption)
{ plotdata<-sub_data(df=household_power_consumption)
png(filename = "plot1.png",width = 480,height = 480)
 hist(plotdata$Global_active_power, freq = TRUE, col= "red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
 dev.off()

  
  

  
}