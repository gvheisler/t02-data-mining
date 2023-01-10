library(ggplot2)

setwd('C:\\Users\\gvhei\\Desktop\\plots')

#ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')
ds <- read.csv2('C:\\Users\\gvhei\\Desktop\\projetos\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$data <- as.Date(ds$data, format = "%Y-%m-%d")
#ds <- ds[which(ds$data>=as.Date("2023-01-01", format = '%Y-%m-%d')),]

for(dia in ds$data){
  dsAux <- ds[which(ds$data<=dia),]
  png(paste("casos-", dia, ".png", sep = ''))
  plot(x = dsAux$data, y = dsAux$quant_casos, type = 'l', xlim = c(min(ds$data), max(ds$data)),
       ylim = c(min(ds$quant_casos), max(ds$quant_casos)), lwd = 1, 
       ylab = "Quantidade de casos", xlab = "Data", main = "Evolução da COVID-19 no RS")
  dev.off()
}

plot(x = ds$data, y = ds$quant_casos, type = 'l', xlim = c(min(ds$data), max(ds$data)), ylim = c(min(ds$quant_casos), max(ds$quant_casos)))

qplot(
  x = ds$data,
  y = ds$quant_casos,
  geom = c("line"),
  ylab = "Quantidade de Casos",
  xlab = "Data",
  main = ""
)
