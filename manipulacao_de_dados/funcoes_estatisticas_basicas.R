library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

# reframe é usado quando summarize irá fazer mais de 1 cálculo
df %>% reframe(
  soma = sum(nota),
  media = mean(nota),
  mediana = median(nota),
  desvio_padrao = sd(nota),
  variancia = var(nota),
  minimo = min(idade),
  maximo = max(idade),
  min_max = range(idade), # esse gera mais uma linha pois retorna uma series
  tamanho = length(nome)
) %>% print()