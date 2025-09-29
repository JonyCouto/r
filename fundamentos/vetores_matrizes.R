# existem outros tipos de variáveis, como vetor e matriz
a <- c(1, 2, 3, 4)
# vetores podem ser criados assim, ou com uma sequência
b <- 5: 10
print(a)
print(a[1])
print(b[2])
# matrizes quanto vetores, precisam ter valores todo do mesmo tipo
# caso for especificado o valor de linhas e colunas, a divisão tem que dar correta
# pois se não gera erro
m <- matrix(1:9, nrow=3, ncol=3)
print(m)
print(m[1,2]) # print de uma célula
print(m[,2]) # print de uma coluna
print(m[1,]) # print de uma linha
