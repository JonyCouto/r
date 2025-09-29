library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

print(df %>% filter(nota >= 6) %>% select(nome))
