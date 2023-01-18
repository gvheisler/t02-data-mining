completo <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\completo.csv')

ds <- completo 

ds <- ds[, c(7,12)]

unique(ds$CRITERIO)

ndf <- data.frame(teste <- unique(ds$CRITERIO), quantidade)