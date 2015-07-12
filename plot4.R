source("load_data_set.R")

smalldataset <- load_data_set()

# Open Graphical Device as PNG
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")

# Setup Graph to show 4 plots in a 2x2 matrix
par(mfrow=c(2,2))

# Plot Graph 1 in grid position 1,1
plot(smalldataset$DateTime, smalldataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

# Plot Graph 2 in grid position 1,2
plot(smalldataset$DateTime, smalldataset$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# Plot Graph 3 in grid position 2,1
plot(smalldataset$DateTime, smalldataset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
lines(smalldataset$DateTime, smalldataset$Sub_metering_2, col = "red")
lines(smalldataset$DateTime, smalldataset$Sub_metering_3, col = "blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") , lty=1, col=c("black", "red", "blue"), bty = "n" )

# Plot Graph 4 in grid position 2,2
plot(smalldataset$DateTime, smalldataset$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

# Close Graphical device
dev.off()