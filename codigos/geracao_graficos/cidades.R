
completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

nds <- data.frame(cidade = unique(ds$MUNICIPIO), casos = NA)

for (i in 1:nrow(nds)) {
  dsAux <- ds[which(ds$MUNICIPIO == nds[i,1]),]
  nds[i,2] <- nrow(dsAux)
}

ndsa <- nds[order(nds$casos, decreasing = TRUE),]

barplot(ndsa$casos, main = 'Quantidade de casos por cidade', xlab = 'Cidades', ylab = 'Casos')

sum(ndsa$casos[c(1:100)])
sum(ndsa$casos)


porcentagem <- (sum(ndsa$casos[c(1:100)])*100)/sum(ndsa$casos)

library(qcc)

pareto.chart(ndsa$casos)
