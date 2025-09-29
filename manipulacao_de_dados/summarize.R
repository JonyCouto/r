library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

# summarize serve para realmente simplificar o conteúdo do df,
# gerar métricas de forma mais simples
print(df %>% 
        summarize(
          media_notas = mean(nota),
          soma_total = sum(nota)
        )
      )