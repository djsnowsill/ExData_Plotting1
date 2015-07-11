source("load_data_set.R")

smalldataset <- load_data_set()

# Open Graphical Device as PNG
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")

# Create Line Graph outputting to PNG
plot(smalldataset$DateTime, smalldataset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Close Graphical device
dev.off()