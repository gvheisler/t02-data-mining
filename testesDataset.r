ds <- read.csv2("C:\\Users\\gvheisler\\Desktop\\data-mining\\saudeRS_2022.csv")


unique(ds$SRAG)

unique(ds$GESTANTE)

ds <- ds[,c(7,8)]

ds$DATA_CONFIRMACAO <- as.Date(ds$DATA_CONFIRMACAO, format = "%d/%m/%Y")
