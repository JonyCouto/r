library("ggplot2")
library("dplyr")

investimentos <- data.frame(
  valor = c(15000, 17500, 18000, 7000),
  mes_ano = c("07/2025", "08/2025", "09/2025", "10/2025")
)

Correlacao_vendas_investimento <- function(data){
  data <- data %>%
    group_by(mes_ano) %>%
    summarize(vendas = n(), .groups = "drop") # .group = drop -> remove os agrupamentos
  data_merged = data %>%
    left_join(investimentos, by="mes_ano")
  corr = cor(data_merged$vendas, data_merged$valor)
  graph <- ggplot(data_merged, aes(x = vendas, y = valor)) +
    geom_point(color = "darkblue") +
    labs(
      title = "Relação entre vendas e investimento",
      subtitle = paste("Correlação de", round(corr, 2)),
      x = "vendas",
      y = "investimento"
    ) +
    theme_minimal() +
    theme(
      plot.title = element_text(size = 16, face = "bold"),
      plot.subtitle = element_text(size = 14, face = "bold"),
      axis.text = element_text(size = 12, face = "bold"),
      axis.title = element_text(size = 14, face = "bold")
    )
  print(graph)
}