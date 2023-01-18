library(arules)

completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

ds <- ds[,c(12, 14:18)]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'),]


for (i in 1:ncol(ds)) {
  ds[,i] <- as.factor(ds[,i])
}

regras <- apriori(data = ds, parameter = list(conf = 0.05, supp = 0.05), target = 'rules', minlen = 6, maxlen = 6)
regras <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')
regras <- sort(regras, by = 'support', decreasing = TRUE)
inspect(regras)

