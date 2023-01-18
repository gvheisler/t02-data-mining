library(ggplot2)

completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

ds <- ds[,c(5,12)]

nds <- data.frame(sexo <- character(4), quantidade <- numeric(4), tipo <- character(4))
colnames(nds) <- c('sexo', 'quantidade', 'tipo')

s <- c("Feminino", "Masculino")
t <- c("RECUPERADO", "OBITO")

i <- 1
for (tipo in t) {
  for (gen in s) {
    dsAux <- ds[which(ds$SEXO==gen & ds$EVOLUCAO == tipo),]
    nds[i,1] <- gen
    nds[i,2] <- nrow(dsAux)
    nds[i,3] <- tipo
    i <- i + 1
  }
}

barplot(
  nds[which(nds$tipo=='RECUPERADO'),2], 
  col = 'darkblue', 
  names.arg = nds[which(nds$tipo=='RECUPERADO'),1],
  main = "Casos por sexo"
)

barplot(
  nds[which(nds$tipo=='OBITO'),2], 
  col = 'darkred', 
  names.arg = nds[which(nds$tipo=='RECUPERADO'),1],
  main = "Óbitos por sexo"
)

