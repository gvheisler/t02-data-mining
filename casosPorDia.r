library(ggplot2)

completo <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\completo.csv', sep = ';')

ds <- completo

ds <- ds[,c(8,12)]

class(ds$DATA_CONFIRMACAO)

ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")

class(ds$DATA_CONFIRMACAO)

dias <- seq(as.Date(min(ds$DATA_CONFIRMACAO)), as.Date(max(ds$DATA_CONFIRMACAO)), by = 'days')

casosDia <- data.frame(matrix(nrow = length(dias), ncol = 2))

colnames(casosDia) <- c('dia', 'casos')

casosDia$dia <- dias

for (i in 1:nrow(casosDia)) {
  dfAux <- ds[which(ds$DATA_CONFIRMACAO==casosDia[i,1]),]
  casosDia[i,2] <- nrow(dfAux)
}

qplot(
  x = casosDia$dia,
  y = casosDia$casos,
  geom = c("smooth"),
  ylab = "Quantidade de casos",
  xlab = "Data",
  main = "Casos de COVID-19 no Rio Grande do Sul"
)
