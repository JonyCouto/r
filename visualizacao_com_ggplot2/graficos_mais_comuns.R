source("visualizacao_com_ggplot2/data_frame_inicial.R")

# existem vários tipos de gráficos
# geom_point() → gráfico de dispersão (de pontos)
print(ggplot(df, aes(x = nomes, y = vendas)) + geom_point())
# geom_line() → gráfico de linha
# uma coisa bacana é que eu posso concatenar outros tipos de gráficos
print(ggplot(df, aes(x = data, y = vendas))
        + geom_line()  
        + geom_point()
        + scale_x_date(date_labels = "%m/%Y")
      )
# geom_bar() → gráfico de barras com o y sendo a contagem do eixo x
print(ggplot(df, aes(x = nomes)) + geom_bar())
# geom_col() → gráfico de barras com alturas definidas por valores
print(ggplot(df, aes(x = nomes, y = vendas))+ geom_col())

# tabelas em R são feitas a partir de saída do dplyr em conjunto com summarize
# existe outras formas com tabela de frequência e uma tabela de 2 colunas
# table() ou xtabs()
# conta a quantidade de frequência
print(table(df$nomes))
# executa a soma direto
print(xtabs(vendas ~ nomes, data = df))