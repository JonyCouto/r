library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

print(df %>% select(nome, idade)) # para usar funções do dplyr eu preciso de fazer o encadeamento com pipe
print(df) # caso eu quiser todas colunas, é só manter sem select, 
# o select em si é reservado para selecionar colunas específicas