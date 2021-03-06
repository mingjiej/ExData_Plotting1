elec <- read.table("/Users/user/Downloads/household_power_consumption.txt", stringsAsFactors = FALSE, header = TRUE, sep = ";")
elec[,1] <- as.Date(elec[,1], format = "%d/%m/%Y")
elec <- with(elec, elec[(elec$Date >= "2007-02-01" & elec$Date <= "2007-02-02"),])
hist(as.numeric(elec[,3]), main = "Global active power", xlab = "Global active power", col = "red")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()