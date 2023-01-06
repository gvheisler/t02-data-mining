#ds <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\saudeRS_2022.csv', sep = ';')
ds <- read.csv('C:\\Users\\gvheisler\\Desktop\\data-mining\\saudeRS_2022.csv', sep = ';')

obitos <- ds[which(ds$EVOLUCAO=='OBITO'),]

nds <- ds[,-c(1:4, 7:9, 11, 21:30)]
obitos <- obitos[,-c(1:4, 7:10, 21:30)]

obitos <- obitos[sort(obitos$DATA_EVOLUCAO),]
