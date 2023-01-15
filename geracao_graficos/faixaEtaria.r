ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosFaixaEtaria.csv')

ds$porcetagemObitos <- (ds$obitos*100)/ds$total


barplot(
  ds$total,
  main = "Casos de COVID-19 por faixa etária",
  xlab = "Faixa etária",
  ylab = 'Quantidade de casos',
  names.arg = ds$faixa_etaria,
  col = 'darkblue'
)

barplot(
  ds$obitos,
  main = "Óbitos por COVID-19 por faixa etária",
  xlab = "Faixa etária",
  ylab = 'Quantidade de óbitos',
  names.arg = ds$faixa_etaria,
  col = 'darkred'
)

barplot(
  ds$porcetagemObitos,
  main = "Porcentagem de óbitos por faixa etária",
  xlab = "Faixa etária",
  ylab = 'Porcentagem de óbitos',
  ylim = c(0,20),
  names.arg = ds$faixa_etaria,
  col = 'black'
)
