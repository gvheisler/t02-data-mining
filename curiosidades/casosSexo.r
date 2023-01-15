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

pie(nds$quantidade[c(1:2)])
pie(nds$quantidade[c(3:4)])

ggplot(nds, aes(x="", y=quantidade, fill=sexo)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)
