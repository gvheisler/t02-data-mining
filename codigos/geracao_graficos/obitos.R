library(ggplot2)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")

plot(x = ds$data, y = ds$quant_obitos, type = 'l')

plot(x = ds$data, y = ds$quant_obitos, type = 'l',
     col = 'red',
     xlab = "Data", ylab = "Quantidade de casos", 
     main = "Casos de COVID-19 por dia no RS",
     lty = 1,
     lwd = 2
)

qplot(
  x = ds$data,
  y = ds$quant_obitos,
  geom = c("line"),
  ylab = "Quandidade de Óbitos",
  xlab = "Data",
  main = ""
)
