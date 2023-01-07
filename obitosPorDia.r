library(ggplot2)

completo <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\completo.csv', sep = ';')

ds <- completo

ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")

dias <- seq(as.Date(min(ds$DATA_CONFIRMACAO)), as.Date(max(ds$DATA_CONFIRMACAO)), by = 'days')

ds <- ds[,c(11,12)]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'),]

ds$DATA_EVOLUCAO <- as.Date(ds$DATA_EVOLUCAO, format = "%d/%m/%Y")


obitosDia <- data.frame(matrix(nrow = length(dias), ncol = 2))

colnames(obitosDia) <- c('dia', 'casos')

obitosDia$dia <- dias

for (i in 1:nrow(obitosDia)){
  dfAux <- ds[which(ds$DATA_EVOLUCAO==obitosDia[i,1]),]
  obitosDia[i,2] <- nrow(dfAux)
}

qplot(
  x = obitosDia$dia,
  y = obitosDia$casos,
  geom = c("smooth")
)

plot(obitosDia, type = 'l')
