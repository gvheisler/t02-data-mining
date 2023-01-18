# regras_associacao

## Nesta pasta estão localizados as principais regras de associação geradas

### Principais sintomas que resultaram em óbitos (listagem das 5 primeiras regras geradas por cada trecho de código)

```R
regras <- apriori(data = ds, parameter = list(conf = 0.5, supp = 0.5), target = 'rules', minlen = 2, maxlen = 2)
regras <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')
regras <- sort(regras, by = 'support', decreasing = TRUE)
inspect(regras)
```
| lhs            | => | rhs              | support   |
|----------------|----|------------------|-----------|
| {GARGANTA=NAO} | => | {EVOLUCAO=OBITO} | 0.8576544 |
| {DISPNEIA=SIM} | => | {EVOLUCAO=OBITO} | 0.8325162 |
| {OUTROS=NAO}   | => | {EVOLUCAO=OBITO} | 0.7254746 |
| {TOSSE=SIM}    | => | {EVOLUCAO=OBITO} | 0.5912761 |
| {FEBRE=NAO}    | => | {EVOLUCAO=OBITO} | 0.5196828 |

------------------------------------------------------
```R
regras <- apriori(data = ds, parameter = list(conf = 0.4, supp = 0.4), target = 'rules', minlen = 3, maxlen = 3)
regras <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')
regras <- sort(regras, by = 'support', decreasing = TRUE)
inspect(regras)
```
| lhs                          | => | rhs              | support   |
|------------------------------|----|------------------|-----------|
| {GARGANTA=NAO, DISPNEIA=SIM} | => | {EVOLUCAO=OBITO} | 0.7105263 |
| {GARGANTA=NAO, OUTROS=NAO}   | => | {EVOLUCAO=OBITO} | 0.6243451 |
| {DISPNEIA=SIM, OUTROS=NAO}   | => | {EVOLUCAO=OBITO} | 0.6200433 |
| {TOSSE=SIM, DISPNEIA=SIM}    | => | {EVOLUCAO=OBITO} | 0.5060803 |
| {FEBRE=NAO, GARGANTA=NAO}    | => | {EVOLUCAO=OBITO} | 0.4762797 |
------------------------------------------------------
```R
regras <- apriori(data = ds, parameter = list(conf = 0.3, supp = 0.3), target = 'rules', minlen = 4, maxlen = 4)
regras <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')
regras <- sort(regras, by = 'support', decreasing = TRUE)
inspect(regras)
```
| lhs                                      | => | rhs              | support   |
|------------------------------------------|----|------------------|-----------|
| {GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.5317472 |
| {TOSSE=SIM, GARGANTA=NAO, DISPNEIA=SIM}  | => | {EVOLUCAO=OBITO} | 0.4002884 |
| {FEBRE=NAO, GARGANTA=NAO, DISPNEIA=SIM}  | => | {EVOLUCAO=OBITO} | 0.3950012 |
| {TOSSE=SIM, DISPNEIA=SIM, OUTROS=NAO}    | => | {EVOLUCAO=OBITO} | 0.3731315 |
| {FEBRE=NAO, GARGANTA=NAO, OUTROS=NAO}    | => | {EVOLUCAO=OBITO} | 0.3497957 |
------------------------------------------------------
```R
regras <- apriori(data = ds, parameter = list(conf = 0.1, supp = 0.1), target = 'rules', minlen = 5, maxlen = 5)
regras <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')
regras <- sort(regras, by = 'support', decreasing = TRUE)
inspect(regras)
```
| lhs                                                 | => | rhs              | support   |
|-----------------------------------------------------|----|------------------|-----------|
| {FEBRE=NAO, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.2993511 |
| {TOSSE=SIM, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.2952656 |
| {TOSSE=NAO, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.2364816 |
| {FEBRE=SIM, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.2323961 |
| {FEBRE=SIM, TOSSE=SIM, DISPNEIA=SIM, OUTROS=NAO}    | => | {EVOLUCAO=OBITO} | 0.2142033 |
------------------------------------------------------
```R
regras <- apriori(data = ds, parameter = list(conf = 0.05, supp = 0.05), target = 'rules', minlen = 6, maxlen = 6)
regras <- subset(regras, rhs %in% 'EVOLUCAO=OBITO')
regras <- sort(regras, by = 'support', decreasing = TRUE)
inspect(regras)
```
| lhs                                                            | => | rhs              | support    |
|----------------------------------------------------------------|----|------------------|------------|
| {FEBRE=NAO, TOSSE=NAO, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.16037010 |
| {FEBRE=SIM, TOSSE=SIM, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.15628455 |
| {FEBRE=NAO, TOSSE=SIM, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.13898101 |
| {FEBRE=SIM, TOSSE=NAO, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.07611151 |
| {FEBRE=SIM, TOSSE=SIM, GARGANTA=SIM, DISPNEIA=SIM, OUTROS=NAO} | => | {EVOLUCAO=OBITO} | 0.05791877 |