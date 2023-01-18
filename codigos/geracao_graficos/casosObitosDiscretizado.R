zlibrary(ggplot2)
library(caret)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")


for (j in 2:3) {
  for (i in 1:nrow(ds)) {
    ds[i,j] <- (ds[i,j] - min(ds[,j]))/max(ds[,j]) - min(ds[,j])
    ds[i,j] <- round(ds[i,j], digits = 4)
  }
}

#ds <- ds[-which(ds$data<as.Date('2022-01-01', format = "%Y-%m-%d")),]
#ds <- ds[-which(ds$data>as.Date('2022-01-01', format = "%Y-%m-%d")),]

plot(x = ds$data, y = ds$quant_casos, col = 'blue', type = 'l', lwd = 1, bg = 'black', pch = 20, xlab = 'Data', ylab = '')
lines(x = ds$data, y = ds$quant_obitos, col = 'red', lwd = 2)

