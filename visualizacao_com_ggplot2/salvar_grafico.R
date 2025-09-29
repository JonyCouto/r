source("visualizacao_com_ggplot2/data_frame_inicial.R")

g <- ggplot(df, aes(x = nomes, y = vendas)) + geom_col()
# ggsave salvo o último plot, mas pode especificar para ele qual salvar que tbm serve
# se eu deixar o width e height nulos ou nem especificar eles aqui
# o ggplot vai salvar o gráfico conforme o que ele utilizou
ggsave("grafico.png", width=, height=, plot = g)