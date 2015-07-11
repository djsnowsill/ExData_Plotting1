# Function to download, format and return subset of household_power_consumption.txt

load_data_set <- function() {
  
# If Raw Data File Archive does not exist then download it
if( !file.exists("dataset.zip"))
{
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "dataset.zip", method="curl")  
}

# Unzip dataset.zip from Web
unzip("dataset.zip")

# Read file into Data Frame
fulldataset <- read.csv2("household_power_consumption.txt", na.strings="?", colClasses="character"  ) 

# Format Columns
fulldataset[[1]] <- as.Date(fulldataset[[1]], "%d/%m/%Y")
for(col in c(3:9)) {
  fulldataset[,col] <- as.numeric(fulldataset[,col])
}

# Extract data for 2007-02-01 and 2007-02-02
smalldataset = subset(fulldataset, Date >= "2007-02-01" & Date <= "2007-02-02")

# Append DateTime to DataSet
smalldataset$DateTime <- paste(smalldataset$Date, smalldataset$Time)
smalldataset$DateTime <- strptime(smalldataset$DateTime, format = "%Y-%m-%d %H:%M:%S")

return(smalldataset)

}