epc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.string = "?");
epc$DateTime <- paste(epc$Date, epc$Time);
epc$DateTime <- as.Date(epc$DateTime, format = "%d/%m/%Y %H:%M:%S")
library(dplyr)
epcFileSubset <- filter(epc, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-03 00:00:00"))
library(datasets)
png(filename="plot1.png")
hist(epcFileSubset$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.off()

