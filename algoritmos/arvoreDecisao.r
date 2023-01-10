library(rpart)
library(rpart.plot)

completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

ds <- ds[,-c(1:4, 7:11, 20:26, 28:30)]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'&ds$EVOLUCAO!='RECUPERADO'),]

ds$CONDICOES <- ifelse(nchar(ds$CONDICOES) > 0, "SIM", "NAO")

#for(i in c(4:8, 10)){
#  ds[,i] <- ifelse(ds[,i]=='SIM', TRUE, FALSE)
#}

ds <- ds[,-2]

for (i in 1:ncol(ds)) {
  ds[,i] <- as.factor(ds[,i])
}

tree <- rpart(formula = EVOLUCAO ~ .,data = ds, method = "class")

rpart.plot(tree)
