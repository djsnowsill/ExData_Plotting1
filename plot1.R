# If Raw Data File Archive does not exist then download it
if( !file.exists("dataset.zip"))
{
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip", method="curl")  
}

# Download and unzip dataset.zip from Web
unzip("dataset.zip")