# regras_associacao

## Nesta pasta estão localizados as principais regras de associação geradas

### Principais sintomas que resultaram em óbitos

        lhs                                         rhs            support  confidence coverage  lift count
[1]  {GARGANTA=NAO}                           => {EVOLUCAO=OBITO} 0.8576544 1          0.8576544 1    35687
[2]  {DISPNEIA=SIM}                           => {EVOLUCAO=OBITO} 0.8325162 1          0.8325162 1    34641
[3]  {OUTROS=NAO}                             => {EVOLUCAO=OBITO} 0.7254746 1          0.7254746 1    30187
[4]  {GARGANTA=NAO, DISPNEIA=SIM}             => {EVOLUCAO=OBITO} 0.7105263 1          0.7105263 1    29565
[5]  {GARGANTA=NAO, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.6243451 1          0.6243451 1    25979
[6]  {DISPNEIA=SIM, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.6200433 1          0.6200433 1    25800
[7]  {TOSSE=SIM}                              => {EVOLUCAO=OBITO} 0.5912761 1          0.5912761 1    24603
[8]  {GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} => {EVOLUCAO=OBITO} 0.5317472 1          0.5317472 1    22126
[9]  {FEBRE=NAO}                              => {EVOLUCAO=OBITO} 0.5196828 1          0.5196828 1    21624
[10] {TOSSE=SIM, DISPNEIA=SIM}                => {EVOLUCAO=OBITO} 0.5060803 1          0.5060803 1    21058

        lhs                                         rhs            support  confidence coverage  lift count
[1]  {GARGANTA=NAO, DISPNEIA=SIM}             => {EVOLUCAO=OBITO} 0.7105263 1          0.7105263 1    29565
[2]  {GARGANTA=NAO, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.6243451 1          0.6243451 1    25979
[3]  {DISPNEIA=SIM, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.6200433 1          0.6200433 1    25800
[4]  {GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} => {EVOLUCAO=OBITO} 0.5317472 1          0.5317472 1    22126
[5]  {TOSSE=SIM, DISPNEIA=SIM}                => {EVOLUCAO=OBITO} 0.5060803 1          0.5060803 1    21058
[6]  {FEBRE=NAO, GARGANTA=NAO}                => {EVOLUCAO=OBITO} 0.4762797 1          0.4762797 1    19818
[7]  {TOSSE=SIM, GARGANTA=NAO}                => {EVOLUCAO=OBITO} 0.4696227 1          0.4696227 1    19541
[8]  {FEBRE=NAO, DISPNEIA=SIM}                => {EVOLUCAO=OBITO} 0.4303052 1          0.4303052 1    17905
[9]  {TOSSE=SIM, OUTROS=NAO}                  => {EVOLUCAO=OBITO} 0.4275415 1          0.4275415 1    17790
[10] {FEBRE=SIM, DISPNEIA=SIM}                => {EVOLUCAO=OBITO} 0.4022110 1          0.4022110 1    16736

        lhs                                                    rhs           support   confidence coverage  lift count
[1]  {GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO}            => {EVOLUCAO=OBITO} 0.5317472 1          0.5317472 1    22126
[2]  {TOSSE=SIM, GARGANTA=NAO, DISPNEIA=SIM}             => {EVOLUCAO=OBITO} 0.4002884 1          0.4002884 1    16656
[3]  {FEBRE=NAO, GARGANTA=NAO, DISPNEIA=SIM}             => {EVOLUCAO=OBITO} 0.3950012 1          0.3950012 1    16436
[4]  {TOSSE=SIM, DISPNEIA=SIM, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.3731315 1          0.3731315 1    15526
[5]  {FEBRE=NAO, GARGANTA=NAO, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.3497957 1          0.3497957 1    14555
[6]  {TOSSE=SIM, GARGANTA=NAO, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.3394857 1          0.3394857 1    14126
[7]  {FEBRE=NAO, DISPNEIA=SIM, OUTROS=NAO}               => {EVOLUCAO=OBITO} 0.3236962 1          0.3236962 1    13469
[8]  {FEBRE=SIM, GARGANTA=NAO, DISPNEIA=SIM}             => {EVOLUCAO=OBITO} 0.3155251 1          0.3155251 1    13129
[9]  {TOSSE=NAO, GARGANTA=NAO, DISPNEIA=SIM}             => {EVOLUCAO=OBITO} 0.3102379 1          0.3102379 1    12909
[10] {FEBRE=NAO, GARGANTA=NAO, DISPNEIA=SIM, OUTROS=NAO} => {EVOLUCAO=OBITO} 0.2993511 1          0.2993511 1    12456

