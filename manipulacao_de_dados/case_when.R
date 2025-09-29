source("manipulacao_de_dados/data_frame_example.R")
library(dplyr)

df %>% mutate(
  status = case_when(
    nota <= 4 ~ "ruim",
    nota <= 5 ~ "analise",
    TRUE ~ "ok" # else para tudo que não entrou
  )
) %>% print()