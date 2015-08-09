 energy_df<- transform(energy_df,Date=as.character(Date))
 energy_df<- transform(energy_df, Date=paste(energy_df$Date,energy_df$Time))
 energy_df <- transform(energy_df,Date = strptime(x,"%Y-%m-%d %H:%M:%S"))
 plot(energy_df$Date,energy_df$Global_active_power, type="l")
  dev.copy(png, file="plot3.png")
 dev.off()
  
  
  
 