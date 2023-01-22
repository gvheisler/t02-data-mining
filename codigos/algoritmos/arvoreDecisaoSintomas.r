library(rpart)
library(rpart.plot)

completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')


ds <- completo

ds <- ds[,-c(1:11, 13, 19:26, 27:30)]
ds <- ds[-which(ds$EVOLUCAO!='OBITO'&ds$EVOLUCAO!='RECUPERADO'),]

dsObitos <- ds[which(ds$EVOLUCAO=='OBITO'),]

dsRecuperados <- ds[which(ds$EVOLUCAO=='RECUPERADO'),]
dsRecuperados <- dsRecuperados[sample(nrow(dsObitos)),]

ds <- rbind(dsRecuperados, dsObitos)

for (i in 1:ncol(ds)) {
  ds[,i] <- as.factor(ds[,i])
}

ds <- ds[,-5]

tree <- rpart(formula = EVOLUCAO ~ ., data = ds, method = "class", cp = 0.0001)

rpart.plot(tree, type = 3, clip.right.labs = FALSE, under = FALSE)
