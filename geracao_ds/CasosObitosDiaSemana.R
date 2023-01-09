library(lubridate)

ds <- read.csv2('C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDia.csv')

ds$dia_semana <- wday(ds$data)

write.csv2(ds, 'C:\\Users\\gvheisler\\Desktop\\data-mining\\t02-data-mining\\ds\\casosObitosDiaSemana.csv', row.names = FALSE)

write.csv2()