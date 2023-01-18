vacinas <- read.csv2('C:\\Users\\gvheisler\\Downloads\\vacina.csv')

vacinas <- vacinas[,c(1,2)]
vacinas$Data <- as.Date(vacinas$Data, format = "%d/%m/%Y")

for (i in 2:nrow(vacinas)) {
  vacinas[i,2] <- vacinas[i,2] + vacinas[i-1,2]
}
populacao <- 11300000
vacinas$porcentagem <- (vacinas$X1.dose*100)/populacao

obitos <- read.csv("C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\obitosPorDia.csv")

obitos <- obitos[,-1]
obitos$dia <- as.Date(obitos$dia, format = "%Y-%m-%d")
i <- 1
for (i in 1:nrow(obitos)) {
  obitos[i,2] <- ((obitos[i,2] - min(obitos[,2]))/max(obitos[,2]) - min(obitos[,2]))*100
}

