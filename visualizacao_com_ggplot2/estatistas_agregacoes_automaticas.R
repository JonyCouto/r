source("visualizacao_com_ggplot2/data_frame_inicial.R")

# exemplo, esse caso aqui nem vai funcionar, porque o smooth funciona com valores numéricos
print(
  ggplot(df, aes(x = factor(nomes), y = vendas)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE, color = "blue")
)

print(
  ggplot(df, aes(x = nomes, y = vendas)) +
  stat_summary(fun = mean, geom = "bar", fill = "skyblue") +   # média em barras
  stat_summary(fun.data = mean_se, geom = "errorbar", width = 0.2)   # erro padrão
)
# funções comuns
# fun = mean → média
# fun = sum → soma
# fun = median → mediana
# fun.data = mean_se → média ± erro padrão
# fun.data = mean_cl_normal → intervalo de confiança

