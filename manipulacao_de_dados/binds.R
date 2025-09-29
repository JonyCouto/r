source("manipulacao_de_dados/data_frame_example.R")
library(dplyr)

# bind_rows empilha data frames por linhas, se não houver a coluna em algum, ele preenche com na
df1 <- data.frame(
  id = 1:3,
  nome = c("Ana", "Beto", "Carla")
)

df2 <- data.frame(
  id = 4:5,
  nome = c("Dan", "Eva")
)
bind_rows(df1, df2) %>% print()
# bind_cols empilha pelas colunas
df1 <- data.frame(
  id = 1:3,
  nome = c("Ana", "Beto", "Carla")
)

df2 <- data.frame(
  nota = c(8, 9, 7),
  curso = c("R", "Python", "R")
)
bind_cols(df1, df2) %>% print()