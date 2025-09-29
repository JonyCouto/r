data <- 1:30

# métricas comuns
media <- mean(data)
mediana <- median(data)
# diferença de variância e desvio padrão
# o desvio padrão é mais intuitivo para interpretar porque ele mede o quanto o valor se distancia da média
# identificando alterações muito grandes de valores
# já a variância é a mesma coisa, só que elevado ao quadrado, é menos intuitivo, mas é boa para cálculos
variancia <- var(data)
desvio_padrao <- sd(data)
resumo_estatistico <- summary(data)
# traz alguns dados resumidos, min, 1º quartial, mediana...
print(resumo_estatistico)