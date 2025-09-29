# criação de função lambda
dobro <- function(x) x * 2
r = 1:5
print(dobro(r))

# lapply aplica a função em cada elemento
print(lapply(r, function(x) x * 3))

# sapply aplica a função em cada elemento e resume a saída
print(sapply(r, function(x) x * 3))

# apply aplica a função para matrizes e dataframes
df = data.frame(
  vendas_mes_abril = c(30, 20),
  vendas_mes_junho = c(50, 10)
)
print(df)
# margin = 1 é por linha
# margin = 2 é por coluna
print(apply(df, 1, function(x) sum(x)))
print(apply(df, 2, function(x) sum(x)))

