library(ggplot2)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")

plot(x = ds$data, y = ds$quant_casos, type = 'l')

qplot(
  x = ds$data,
  y = ds$quant_casos,
  geom = c("line"),
  ylab = "Quandidade de Casos",
  xlab = "Data",
  main = ""
)
