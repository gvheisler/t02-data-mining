ds <- read.csv2("C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDiaSemana.csv")


wd <- data.frame(dia_semana = c(1:7), casos <- numeric(7), obitos <- numeric(7))

colnames(wd) <- c("dia_semana", "casos", "obitos")

dia <- 1

for (dia in 1:nrow(wd)) {
  dfAux <- ds[which(ds$dia_semana==dia),]
  wd[dia, 2] <- sum(dfAux$quant_casos)
  wd[dia, 3] <- sum(dfAux$quant_obitos)
}



barplot(
  wd$casos,
  main = "Casos de COVID-19 por dia da semana",
  xlab = "Dia da semana",
  ylab = 'Quantidade de casos',
  names.arg = c('Domingo','Segunda-Feira','Terça-Feira', 'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sábado'),
  col = 'darkblue'
)

barplot(
  wd$obitos,
  main = "Óbitos por COVID-19 por dia da semana",
  xlab = "Dia da semana",
  ylab = 'Quantidade de óbitos',
  names.arg = c('Domingo','Segunda-Feira','Terça-Feira', 'Quarta-Feira', 'Quinta-Feira', 'Sexta-Feira', 'Sábado'),
  col = 'darkred'
)
