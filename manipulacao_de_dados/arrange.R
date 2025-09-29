library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

# ordenação crescente
print(df %>% arrange(nota))
# ordenação decrescente
print(df %>% arrange(desc(nota)))
# ordenação por grupos quando é feito um group by antes
print(df %>% group_by(nota)  %>% arrange(nota, .by_group = TRUE))