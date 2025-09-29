library(dplyr)

df1 <- data.frame(
  id = c(1, 2, 3, 4),
  nome = c("Ana", "Beto", "Carla", "Dan")
)

df2 <- data.frame(
  id = c(3, 4, 5, 6),
  nota = c(7, 8, 9, 10)
)

# inner_join: mantém apenas os dados que existe nos 2
df1 %>% inner_join(df2, by = "id") %>% print()
# left_join: mantém todas as linhas do primeiro df
df1 %>% left_join(df2, by = "id") %>% print()
# right_join: mantém todas as linhas do segundo df
df1 %>% right_join(df2, by = "id") %>% print()
# full_join: mantém todas as linhas dos dois df
df1 %>% full_join(df2, by = "id") %>% print()