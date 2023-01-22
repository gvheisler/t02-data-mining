completo <- read.csv2('C:\\Users\\gvhei\\Desktop\\projetos\\completo.csv')

ds <- completo

ds <- ds[,c(8, 12, 14:18)]

ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")

dias <- seq(as.Date(min(ds$DATA_CONFIRMACAO)), as.Date(max(ds$DATA_CONFIRMACAO)), by = 'days')

sintomasTS <- data.frame(matrix(nrow = length(dias), ncol = 8))

colnames(sintomasTS) <- c('dia','casos','obitos','febre','tosse','garganta','dispneia','outros')

sintomasTS$dia <- dias

for (i in 1:nrow(sintomasTS)) {
  dfAux <- ds[which(ds$DATA_CONFIRMACAO==sintomasTS[i,1]),]
  sintomasTS[i,2] <- nrow(dfAux)
  sintomasTS[i,3] <- nrow(dfAux[which(dfAux$EVOLUCAO=='OBITO'),])
  sintomasTS[i,4] <- nrow(dfAux[which(dfAux$FEBRE=='SIM'),])
  sintomasTS[i,5] <- nrow(dfAux[which(dfAux$TOSSE=='SIM'),])
  sintomasTS[i,6] <- nrow(dfAux[which(dfAux$GARGANTA=='SIM'),])
  sintomasTS[i,7] <- nrow(dfAux[which(dfAux$DISPNEIA=='SIM'),])
  sintomasTS[i,8] <- nrow(dfAux[which(dfAux$OUTROS=='SIM'),])
}

sintomasCasos <- sintomasTS[,-3]


for (j in 3:ncol(sintomasTS)-1) {
  sintomasCasos[,j] <- (sintomasCasos[,j]*100)/sintomasCasos[,2]
}

