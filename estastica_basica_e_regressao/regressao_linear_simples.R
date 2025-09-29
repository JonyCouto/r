# variável independente
x <- c(1, 2, 3, 4, 5)
# variável dependente, o que queremos explicar/predizer
y <- c(2, 4, 5, 4, 5)
# regressão linear simples serve para estimar a relação de uma varíavel dependente
# e uma independente
# liner model = lm
# y ~ x = para cada y um respectivo x, y em função de x
modelo <- lm(y ~ x)
# resumo do resultado do modelo
# mostra r-squared: quão bem o modelo explica os dados
# quanto mais próximo do 1, melhor
# p-value: mostra se a regrassão linear trouxe uma inclinação significativa
# se a função y para x é algo que tem dependência
# ou somente ruído
# p-value < 0.05 → relação estatisticamente significativa.
# p-value ≥ 0.05 → não há evidência estatística suficiente.
print(summary(modelo)) 
plot(x, y)
# desenha uma reta no gráfico, ao passar o modelo ele usa as variáveis estimatas
abline(modelo, col="red")