plot(powcon$datetime , powcon$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")
dev.off()