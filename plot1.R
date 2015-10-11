## Proj 1 - Exploratory data analysis
## areyou76

## load data plot1.R

datafile <- "./1-DataScientistCertification\ExploratoryDataAnalysis/household_power_consumption.txt"

data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)

globalActivePower <- as.numeric(subSetData$Global_active_power)

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()

