library(rpart)
library(rpart.plot)

completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

ds <- ds[,-c(1:4, 7:11, 20:26, 28:30)]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'&ds$EVOLUCAO!='RECUPERADO'),]

dsObitos <- ds[which(ds$EVOLUCAO=='OBITO'),]

dsRecuperados <- ds[which(ds$EVOLUCAO=='RECUPERADO'),]
dsRecuperados <- dsRecuperados[sample(nrow(dsObitos)),]

ds <- rbind(dsRecuperados, dsObitos)

ds$CONDICOES <- ifelse(nchar(ds$CONDICOES) > 0, 1, 0)

for(i in c(4:9, 11)){
  ds[,i] <- ifelse(ds[,i]=='SIM', 1, 0)
}

ds <- ds[,-c(4,11)]

ds <- ds[,-2]

#for (i in 1:ncol(ds)) {
#  ds[,i] <- as.factor(ds[,i])
#}

tree <- rpart(formula = EVOLUCAO ~ .,data = ds, method = "class", cp = 0.005)

rpart.plot(tree,  type = 0, clip.right.labs = FALSE, under = TRUE)
