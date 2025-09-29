library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

# conta frequência de cada valor
print(table(df["nota"]))
# retorna valores distintos, apenas os valores deles
print(unique(df["nota"]))
# retorna valores duplicados, pode ser usado para buscar valores únicos, isso traz um vetor lógico
df %>% filter(!duplicated(nota)) %>% print()
# combinadas com group by
# n() é o count
df %>% group_by(nota) %>% summarize(
  quantidade = n()
) %>% print()
# n_distinct(col)	Conta valores únicos
df %>% summarize(
  quantidade_distinto = n_distinct(nota)
) %>% print()