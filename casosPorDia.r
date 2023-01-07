dsLido <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\saudeRS_2022.csv', sep = ';')

ds <- dsLido

completo <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\completo.csv', sep = ';')

ds <- completo

ds <- ds[,c(8,12)]

class(ds$DATA_CONFIRMACAO)

ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")

class(ds$DATA_CONFIRMACAO)
