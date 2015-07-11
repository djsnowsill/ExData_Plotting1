source("load_data_set.R")

smalldataset <- load_data_set()

# Open Graphical Device as PNG
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")

# Create Line Graph with multiple lines outputting to PNG
plot(smalldataset$DateTime, smalldataset$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
lines(smalldataset$DateTime, smalldataset$Sub_metering_2, col = "red")
lines(smalldataset$DateTime, smalldataset$Sub_metering_3, col = "blue")

# Add Legend to line graph
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") , lty=1, col=c("black", "red", "blue") )

# Close Graphical device
dev.off()