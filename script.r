ds <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\saudeRS_2022.csv', sep = ';')
#ds <- read.csv('C:\\Users\\gvheisler\\Desktop\\data-mining\\saudeRS_2022.csv', sep = ';')

obitos <- ds[which(ds$EVOLUCAO=='OBITO'),]

nds <- ds[,-c(1:4, 7, 9:11, 21:30)]
obitos <- obitos[,-c(1:4, 7:10, 21:30)]

obitos$DATA_EVOLUCAO <- as.Date(obitos$DATA_EVOLUCAO, format = "%d/%m/%y")
nds$DATA_CONFIRMACAO <- as.Date(nds$DATA_CONFIRMACAO, format = "%d/%m/%y")

obitos <- obitos[order(obitos$DATA_EVOLUCAO),]
nds <- nds[order(nds$DATA_CONFIRMACAO),]

obitosPorDia <- data.frame(matrix(nrow = length(unique(obitos$DATA_EVOLUCAO)), ncol = 2))

colnames(obitosPorDia) <- c('dia', 'obitos')

obitosPorDia$dia <- unique(obitos$DATA_EVOLUCAO)

for(i in 1:nrow(obitosPorDia)){
  dsAux <- obitos[which(obitos$DATA_EVOLUCAO==obitosPorDia[i,1]), ]
  obitosPorDia[i,2] <- nrow(dsAux)
}

casosPorDia <- data.frame(matrix(nrow = length(unique(nds$DATA_CONFIRMACAO)), ncol = 2))

colnames(casosPorDia) <- c('dia', 'casos')

casosPorDia$dia <- unique(nds$DATA_CONFIRMACAO)

for(i in 1:nrow(obitosPorDia)){
  dsAux <- nds[which(nds$DATA_CONFIRMACAO==obitosPorDia[i,1]), ]
  casosPorDia[i,2] <- nrow(dsAux)
}

plot(casosPorDia, type = 'l')
casosPorDia[250,2] <- 0
obitosPorDia[300,2] <- 2500
lines(obitosPorDia, col = 'red')
