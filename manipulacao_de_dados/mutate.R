library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

# atenção, a atribuição é por sinal de igual na biblioteca dplyr
# mutate altera o data frame e retorna um novo, não altera o original
df %>% filter(nota == 5) %>% mutate(
  nota = nota + 1,
  obs = "arredondado"
) %>% print()
# o mutate permite fazer várias alterações sem ter que chamar várias vezes ele
# caso eu queira aplicar alterações apenas em determinados campos,
# tenho que combinar mutate com if_else
df <- df %>% mutate(
  obs = if_else(nota == 5, "arredondado", NA_character_),
  nota = if_else(nota == 5, nota + 1, nota)
)
print(df)