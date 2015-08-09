 with(energy_df, plot(Date, Sub_metering_1, col = "black", type = "l", ylab="Energy Sub Metering"))
 with(energy_df, lines(Date, Sub_metering_2, col = "red"))
 with(energy_df, lines(Date, Sub_metering_3, col = "blue"))
 dev.copy(png, file="plot3.png")