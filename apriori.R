library(arules)

+dsLido <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\saudeRS_2022.csv', sep = ';')

ds <- dsLido

ds <- ds[,-c(1:4, 7:11, 20:30)]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'&ds$EVOLUCAO!='RECUPERADO'),]

#operador ternário eca
ds$CONDICOES <- nchar(ds$CONDICOES) > 0 ? ds$CONDICOES <- 1 : ds$CONDICOES <- 0

for(i in 4:9){
  ds[,i] <- ifelse(ds[,i]=='SIM', TRUE, FALSE)
}

for (i in 1:ncol(ds)) {
  ds[,i] <- as.factor(ds[,i])
}

levels(ds$EVOLUCAO)

dsObito <- ds[which(ds$EVOLUCAO=='OBITO'),]

dsObito$EVOLUCAO <- as.factor(dsObito$EVOLUCAO)

levels(dsObito$EVOLUCAO)

regras <- apriori(data = dsObito, parameter = list(conf = 0.5, supp = 0.5), target = 'rules', minlen = 4)

regrasObito <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')

regrasObito <- sort(regrasObito, by = 'support', decreasing = TRUE)

inspect(regrasObito)
