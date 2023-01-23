#completo <- read.csv2('C:\\Users\\gvhei\\Desktop\\projetos\\completo.csv')
completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')



ds <- completo

ds <- ds[,c(8, 12, 14:18)]

ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")

dias <- seq(as.Date(min(ds$DATA_CONFIRMACAO)), as.Date(max(ds$DATA_CONFIRMACAO)), by = 'days')

sintomasTS <- data.frame(matrix(nrow = length(dias), ncol = 7))

colnames(sintomasTS) <- c('dia','casos','febre','tosse','garganta','dispneia','outros')

sintomasTS$dia <- dias

for (i in 1:nrow(sintomasTS)) {
  dfAux <- ds[which(ds$DATA_CONFIRMACAO==sintomasTS[i,1]),]
  sintomasTS[i,2] <- nrow(dfAux)
  sintomasTS[i,3] <- nrow(dfAux[which(dfAux$FEBRE=='SIM'),])
  sintomasTS[i,4] <- nrow(dfAux[which(dfAux$TOSSE=='SIM'),])
  sintomasTS[i,5] <- nrow(dfAux[which(dfAux$GARGANTA=='SIM'),])
  sintomasTS[i,6] <- nrow(dfAux[which(dfAux$DISPNEIA=='SIM'),])
  sintomasTS[i,7] <- nrow(dfAux[which(dfAux$OUTROS=='SIM'),])
}


sintomasTS <- sintomasTS[which(sintomasTS$casos>0),]

for (j in 3:ncol(sintomasTS)) {
  sintomasTS[,j] <- ((sintomasTS[,j]*100)/sintomasTS[,2])
}

plot(x = sintomasTS$dia, sintomasTS$febre, type = 'l', col = 'blue', ylim = c(0,100), xlab = 'Data', ylab = 'Porcentagem de casos', lwd = 2)
lines(x = sintomasTS$dia, sintomasTS$tosse, col = 'darkgreen', lwd = 2)
lines(x = sintomasTS$dia, sintomasTS$garganta, col = 'black', lwd = 2)
lines(x = sintomasTS$dia, sintomasTS$dispneia, col = 'darkred', lwd = 2)
lines(x = sintomasTS$dia, sintomasTS$outros, col = 'yellow', lwd = 2)
legend('topleft', legend=c("Febre", "Tosse", "Garganta", "Dispneia", "Outros"),
       col=c("blue", "darkgreen", "black", 'darkred', 'yellow'), lty = 1, lwd = 2, cex = 0.5)
