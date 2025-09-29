source("manipulacao_de_dados/data_frame_example.R")
library(dplyr)
# across aplica uma função em vários colunas de uma vez só
# ele tem uma sintaxe um pouco confusa també
# o primeiro argumento tem que ser informado explicitamente que é um vetor
# ele vai identificar esse argumento como sendo os dados do meu data frame
# o segundo argumento é a função
# ~ identifica uma função lambda, signinifica para cada linha vai executar a seguinte função
# . é o valor para cada linha
df %>% mutate(across(c(nota, idade), ~ . + 1)) %>% print()