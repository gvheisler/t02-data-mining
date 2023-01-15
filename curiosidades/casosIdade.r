completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo

ds <- ds[,c(6,12)]

idades <- unique(ds$FAIXAETARIA)
