## Only first 3000 observations are read starting from the date 1/2/2007
powcon <- read.table("household_power_consumption.txt", sep = ";", skip = grep("1/2/2007", readLines("household_power_consumption.txt")),nrows = 3000)

## The column names are read and used accordingly to set the variable names
varnames <- read.table("household_power_consumption.txt", sep = ";", nrows = 1)
colnames(powcon) <- varnames

## The data is subsetted to include only those observations with date 1/2/2007 and 2/2/2007
powcon <- subset(powcon, Date == "1/2/2007" | Date == "2/2/2007")

## A new variable is created and converted to date/time format
powcon$datetime <- paste(powcon$Date,powcon$Time)
powcon$datetime <- strptime(powcon$datetime, "%d/%m/%Y %H:%M:%S")