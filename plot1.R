source("load_data_set.R")

smalldataset <- load_data_set()

# Open Graphical Device as PNG
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")

# Create Historgram outputting to PNG
hist(smalldataset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

# Close Graphical device
dev.off()