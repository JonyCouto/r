source("visualizacao_com_ggplot2/data_frame_inicial.R")
library("ggplot2")

# geom_histogram() → histograma
# Serve para ver a distribuição de uma variável numérica, agrupando em “bins” (intervalos).
# serve para ver como está distribuido a frequência
# binwidth é o break, o passo/bin/intervalo que vai ser verificado
print(ggplot(df, aes(x = vendas)) + geom_histogram(binwidth = 10))
# geom_boxplot() → boxplot (quartis e outliers)
# Mostra quartis, mediana e outliers de uma variável numérica
# Funciona bem para comparar grupos
# as linhas representam a mediana
# a caixa é o 50% dos dados
# os pontos são os dados fora do padrão
# e os traços verticais seriam o alcance. o menor valor do quartil central e o maior valor do quartil central
print(ggplot(df, aes(x = nomes, y = vendas)) + geom_boxplot())
