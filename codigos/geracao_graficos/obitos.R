library(ggplot2)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")

plot(x = ds$data, y = ds$quant_obitos, type = 'l')

qplot(
  x = ds$data,
  y = ds$quant_obitos,
  geom = c("line"),
  ylab = "Quandidade de Óbitos",
  xlab = "Data",
  main = ""
)
