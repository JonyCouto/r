library("ggplot2")

Distribuicao_Valor_Vendas <- function(data){
  graph <- ggplot(data, aes(x = mes_ano, y = valor)) +
    geom_boxplot(fill = "lightblue") +
    coord_cartesian(ylim = c(0, 200)) + # essa parte mantém o eixo y apenas nesse limite
    theme_classic() +
    labs(
      title = "Distribuição do valor das vendas"
    ) + 
    theme(
      plot.title = element_text(size = 16, face = "bold", hjust= 0.5),
      axis.text = element_text(size = 12, face = "bold"),
      axis.title = element_text(size = 14, face = "bold")
    )
  print(graph)
}