# regressão linear múltipla é quando mais de uma
# variável independente
df <- data.frame(
  vendas = c(200, 220, 250, 270, 300, 320),
  preco = c(10, 9, 8, 7, 6, 5),
  propaganda = c(5, 10, 15, 20, 25, 30)
)

# vendas está para preço e propaganda
modelo <- lm(vendas ~ preco + propaganda, data = df)
print(summary(modelo))
# informações importantes sobre o summary
# intercept é como o valor dependente será se os idenpendentes forem zerados
# o que vem abaixo disso é como o valor depentende se comportará se aumentar em 1 o valor
# da variável independente
# e o pr mostrando na tabela de coeficientes é o valor p
# exemplo = 3.93e-06 é valor em notação científica, = 3930 * 10 ^ 6
# quando é uma regressão linear múltipla, ele tem o valor geral da análise no final
