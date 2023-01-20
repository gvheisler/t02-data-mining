library(ggplot2)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")

plot(x = ds$data, y = ds$quant_casos, type = 'l', 
     xlab = "Data", ylab = "Quantidade de casos", 
     main = "Casos de COVID-19 por dia no RS",
     lty = 1,
     lwd = 2
)
lines(x = ds$data, y = ds$quant_obitos, col = 'red', lwd = 2)

legend('topleft', legend=c("Casos", "Óbitos"),
       col=c("black", "red"), lty = 1, lwd = 2, cex = 0.8)

qplot(
  x = ds$data,
  y = ds$quant_casos,
  geom = c("line"),
  ylab = "Quandidade de Casos",
  xlab = "Data",
  main = ""
)
