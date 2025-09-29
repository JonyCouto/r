dados <- c((rep(c(1, 2, 3, 4, 5), each=3)), (6: 30))

# temos algumas visualizações sem o ggplot2 que traz algumas informações sobre os dados
# o box plot traz o alcance dos dados (min, max) representado por - fora da caixa
# Os - fora da caixa são chamados de bigodes
# Esses bigodes são calculos a partir de IQR = (Q3 - Q1)
# -1.5 * IQR
# 1.5 * IQR
# Pontos fora dos bigodes = outliers.
# o - interno na caixa é a mediana
# a caixa representa o ponto central 50% dos dados (q1 entre q3)
# main é o título
print(boxplot(dados, main="Boxplot"))
# histograma serve para ver quantas vezes o valor dentro de um intervalo aparece
# ótimo para ver onde está concentrado os dados
print(hist(dados, xlab="Valores", col="lightblue", main="Histograma"))