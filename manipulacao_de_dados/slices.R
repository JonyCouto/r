source("manipulacao_de_dados/data_frame_example.R")
library(dplyr)

# slice_head: pega as primeiras linhas
df %>% slice_head(n = 1) %>% print()
# prop pega em base de uma proporção
df %>% slice_head(prop = 0.5) %>% print()
# slice_tail: pega as últimas linhas
df %>% slice_tail(n = 2) %>% print()
# slice_sample: pega linhas aleatórias
df %>% slice_sample(n = 3) %>% print()
# slice_max: pega linhas com valores máximos de uma coluna
df %>% slice_max(nota, n = 2) %>% print() 
# slice_min: pega linhas com valores mínimos de uma coluna
df %>% slice_min(nota, n = 2) %>% print() 