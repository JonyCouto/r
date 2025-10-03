library("dplyr")

Filter_real_sales <- function(df){
  df <- df %>% filter(
    nao_ativado != 1 &
    cidade %in% c(
      "São Sebastião do Paraíso", 
      "Passos", 
      "São Tomás de Aquino",
      "Cássia",
      "Monte Santo de Minas",
      "Ribeirão Preto",
      "Conceição da Aparecida",
      "Carmo do Rio Claro",
      "São José da Barra",
      "Alpinópolis",
      "Alterosa"
    ) &
    origem == "novo" &
    origem_servico != "MIGRAÇÃO SMN"
  )
  return (df)
}

Filter_internet <- function(df){
  df <- df %>% filter(id_servico_tecnologia == 4)
  return (df)
}