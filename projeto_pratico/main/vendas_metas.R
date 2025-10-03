library("ggplot2")

metas_exemplo <- data.frame(
  metas = c(350, 400, 450, 400), 
  mes_ano = c("07/2025", "08/2025", "09/2025", "10/2025")
)

Vendas_metas <- function(data){
  print(data)
  graph <- ggplot() +
    geom_bar(data = data, aes(x = mes_ano), fill = "lightgreen") +
    geom_line(data = metas_exemplo, aes(x = mes_ano, y = metas, group = 1), color = "red", linewidth = 1) +
    geom_point(data = metas_exemplo, aes(x = mes_ano, y = metas), color = "red", size = 1.5) +
    geom_text(data = data, aes(x = mes_ano, label = ..count..), stat = "count", vjust = -0.5) +
    theme_classic() +
    labs(
      title = "Vendas x Metas",
      subtitle = "Vendas reais até a data 03/10, mas as metas são fictícias"
    ) +
    theme(
      plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
      plot.subtitle = element_text(size = 14, face = "bold", hjust = 0.5),
      axis.text = element_text(size = 12, face = "bold"),
      axis.title = element_text(size = 14, face = "bold")
    )
  print(graph)
}