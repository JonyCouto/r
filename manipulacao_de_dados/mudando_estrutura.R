source("manipulacao_de_dados/data_frame_example.R")

# o rename é um pouco confuso, porque ele tem a sintaxe 
# de atribuir o nome de origem para o nome que vai ser renomeado
# ex: renomeado = origem
df %>% rename(pontos = nota) %>% print() 

# realocar as colunas em ordem
df %>% relocate(nota, .before = nome) %>% print()