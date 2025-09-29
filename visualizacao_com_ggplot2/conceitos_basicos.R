source("visualizacao_com_ggplot2/data_frame_inicial.R")
library("ggplot2")

# dessa forma é criada a estrutura básica, mas com ela deve concatenar um tipo de gráfico
# dessa forma já é criado um gráfico
print(ggplot(df, aes(x = nomes, y = vendas)) + geom_col())