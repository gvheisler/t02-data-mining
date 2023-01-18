vacinas <- read.csv2('C:\\Users\\gvheisler\\Downloads\\vacina.csv')
populacao <- 11300000

vacinas <- vacinas[,c(1:3)]
vacinas$Data <- as.Date(vacinas$Data, format = "%d/%m/%Y")

for (i in 2:nrow(vacinas)) {
  vacinas[i,2] <- vacinas[i,2] + vacinas[i-1,2]
  vacinas[i,3] <- vacinas[i,3] + vacinas[i-1,3]
}


vacinas$porcentagem1 <- (vacinas$X1.dose*100)/populacao
vacinas$porcentagem2 <- (vacinas$X2.dose*100)/populacao

plot(x = vacinas$Data, y = vacinas$porcentagem1, type = 'l', col = 'darkgreen', lwd = 3, ylim = c(0,100), xlab = 'Data', ylab = 'porcentagem de vacinados', main = 'Porcentagem da população vacinada')
lines(x = vacinas$Data, y = vacinas$porcentagem2, col = 'darkblue', lwd = 3)
legend('topleft', legend=c("1ª dose", "2ª dose"),
       col=c("darkgreen", "darkblue"), lty = 1, lwd = 3 )

#obitos <- read.csv("C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\obitosPorDia.csv")
obitos <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

obitos$data <- as.Date(obitos$data, format = "%Y-%m-%d")
obitos <- obitos[,-2]
for (i in 1:nrow(obitos)) {
  obitos[i,2] <- ((obitos[i,2] - min(obitos[,2]))/max(obitos[,2]) - min(obitos[,2]))*100
}
plot(x = obitos$data, y = obitos$quant_obitos, type = 'l', col = 'darkred', ylab = 'Óbitos e vacinados', xlab = 'Data', main = 'Gráfico normalizado de óbitos\n em comparação com as vacinas')
lines(x = vacinas$Data, y = vacinas$porcentagem1, col = 'darkgreen', lwd = 3)
lines(x = vacinas$Data, y = vacinas$porcentagem2, col = 'darkblue', lwd = 3)

legend('topleft', legend=c("Óbitos normalizados", "1ª dose", "2ª dose"),
       col=c("darkred", "darkgreen", "darkblue"), lty = 1, lwd = c(1,3,3), cex = 0.5)
