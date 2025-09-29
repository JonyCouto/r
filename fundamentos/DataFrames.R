# criação de um dataframe
df <- data.frame(
  nome = c("Jonathan", "Jefferson", "Henrique"),
  idade = c(26, 30, 29),
  profissao = c("a", "b", "c")
)
# também é possível criar um dataframe a partir de vetores
nomes <- c("João", "Maria", "Pedro")
idades <- c(21, 28, 35)
notas <- c(8.5, 9.0, 7.3)

df2 <- data.frame(nomes, idades, notas)
df2
# e também é possível converter uma matriz em um dataframe
m <- matrix(1:6, nrow=2)
df3 <- as.data.frame(m)
print(df3)

# acesso de dados
print(df)
print(df[1]) # primeira linha
print(df[2, "nome"]) # acessando linha e atributo
print(df[, "nome"]) # acessando atributos
# ou
print(df$nome) # acessando atributos

# manipulação de dados
df$cor = c("branco", "pardo", "branco") # alteração ou inclusão de coluna
print(df$cor)
df$cor <- NULL # remoção de coluna
print(df)
