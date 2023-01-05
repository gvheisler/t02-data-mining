ds <- read.csv('C:\\Users\\gvhei\\Desktop\\projetos\\saudeRS_2022.csv', sep = ';')

ds <- ds[,-c(1:4, 7:11, 21:30)]

as.factor(ds$FAIXAETARIA)
