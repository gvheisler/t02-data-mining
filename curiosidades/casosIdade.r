completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

ds <- ds[,c(6,12)]

idades <- unique(ds$FAIXAETARIA)

ndf <- data.frame(faixa_etaria <- unique(ds$FAIXAETARIA), casos <- NA, obitos <- NA, total <- NA)
colnames(ndf) <- c('faixa_etaria', 'recuperado', 'obitos', 'total')
ndf <- ndf[order(ndf$faixa_etaria),]

for (i in 1:nrow(ndf)) {
  dfAux <- ds[which(ds$FAIXAETARIA==ndf[i,1]),]
  ndf[i, 2] <- nrow(dfAux[which(dfAux$EVOLUCAO=='RECUPERADO'),])
  ndf[i, 3] <- nrow(dfAux[which(dfAux$EVOLUCAO=='OBITO'),])
  ndf[i, 4] <- ndf[i, 2] + ndf[i, 3]
}

write.csv2(ndf, 'C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosFaixaEtaria.csv', row.names = FALSE, col.names = TRUE)
