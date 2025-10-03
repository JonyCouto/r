library("dplyr")

Format_sales <- function(df){
  df$nao_ativado <- as.numeric(df$motivo_cancelamento_resumido %in% c("Operacional", "Oportunidade"))
  df$data_cadastro <- as.Date(df$data_cadastro)
  df$data_cancelamento <- as.Date(df$data_cancelamento)
  df$mes <- format(df$data_cadastro, "%m")
  df$ano <- format(df$data_cadastro, "%Y")
  df$mes_ano <- paste(df$mes, df$ano, sep = "/")
  return (df)
}