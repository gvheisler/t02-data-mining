library(ggplot2)
#Geração csv data / casos no dia / obitos no dia, baseado nos dados completos

completo <- read.csv('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv', sep = ';')

ds <- completo


ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")
ds$DATA_EVOLUCAO <- as.Date(ds$DATA_EVOLUCAO, format = "%d/%m/%Y")

dias <- seq(as.Date(min(ds$DATA_CONFIRMACAO)), as.Date(max(ds$DATA_CONFIRMACAO)), by = 'days')

######
#Criação df de casos

casos <- ds[,c(8,12)]

casosDia <- data.frame(matrix(nrow = length(dias), ncol = 2))

colnames(casosDia) <- c('dia', 'casos')

casosDia$dia <- dias

for (i in 1:nrow(casosDia)) {
  dfAux <- casos[which(casos$DATA_CONFIRMACAO==casosDia[i,1]),]
  casosDia[i,2] <- nrow(dfAux)
}

######

######
#Criação df de obitos

obitos <- ds[-which(ds$EVOLUCAO!='OBITO'),]
obitos <- obitos[,c(11,12)]

obitosDia <- data.frame(matrix(nrow = length(dias), ncol = 2))

colnames(obitosDia) <- c('dia', 'obitos')

obitosDia$dia <- dias

for (i in 1:nrow(obitosDia)){
  dfAux <- obitos[which(obitos$DATA_EVOLUCAO==obitosDia[i,1]),]
  obitosDia[i,2] <- nrow(dfAux)
}

######

qplot(
  x = casosDia$dia,
  y = casosDia$casos,
  geom = c("line")
)

qplot(
  x = obitosDia$dia,
  y = obitosDia$obitos,
  geom = c("line")
)
