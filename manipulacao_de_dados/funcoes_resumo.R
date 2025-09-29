library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")


# first(col) / last(col) primeiro / último valor
df %>% first(df) %>% print()
df %>% last(df) %>% print()