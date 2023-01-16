library(arules)

completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

#ds <- ds[,-c(1:4, 6:11, 13, 20:26, 28:30)]
ds <- ds[,c(12, 14:18)]
#ds <- ds[-which(ds$EVOLUCAO!='OBITO'&ds$EVOLUCAO!='RECUPERADO'),]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'),]

ds$CONDICOES <- ifelse(nchar(ds$CONDICOES) > 0, 1, 0)

for(i in c(3:7, 9)){
  ds[,i] <- ifelse(ds[,i]=='SIM', 1, 0)
}


ds$EVOLUCAO <- ifelse(ds$EVOLUCAO=='OBITO', 1, 0)

ds$SEXO <- ifelse(ds$SEXO=='Masculino', 1, 0)


for (i in 1:ncol(ds)) {
  ds[,i] <- as.factor(ds[,i])
}

# 1 - SIM, 0 - NAO
# 1 - Masculino, 0 - Feminino
# 1 - OBITO, 0 - RECUPERADO

regras <- apriori(data = ds, parameter = list(conf = 0.2, supp = 0.2), target = 'rules', minlen = 5)

regrasObito <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')

regrasObito <- sort(regrasObito, by = 'support', decreasing = TRUE)

#inspect(regras)
inspect(regrasObito)

