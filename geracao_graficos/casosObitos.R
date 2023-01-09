library(ggplot2)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")

plot(x = ds$data, y = ds$quant_casos, type = 'l')
lines(x = ds$data, y = ds$quant_obitos, col = 'red')
