x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 5, 4, 5)

# o coeficiente angular é um indicativo de como os dados se comportam uns aos outros
# + 1 (correlação perfeita positiva - quanto mais aumenta x, mais aumenta o y, com mesmas proporções)
# - 1 (correlação perfeita negativa - quanto mais diminui x, menos aumenta o y, com mesmas proporções)
# 0 - não há correlação definida entre as variáveis
# dessa forma conseguimos ver como o impacto de um investimento ou a falta dele em um ponto
# resulta em outro ponto
print(cor(x, y))
# correlação em gráfico
plot(x, y, main = "Correlação de dados X e Y")