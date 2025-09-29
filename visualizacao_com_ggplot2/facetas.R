source("visualizacao_com_ggplot2/data_frame_inicial.R")

# facetas criam gráficos por variáveis
# facet_wrap

print(
  ggplot(df, aes(x = nomes, y = vendas))
  + geom_col()
  + facet_wrap(~ data)
)

# facet_grid gera gráficos por variáveis também, mas em um formato diferente e bem melhor
print (ggplot(df, aes(x = data, y = vendas)) + 
        geom_col() + 
        facet_grid(nomes ~ .)
)
# muito bacana para análise de dados
df$tipo <- rep(c("internet", "tv", "telefonia"), each = 2)
# pode usar duas variáveis
print (ggplot(df, aes(x = data, y = vendas)) + 
        geom_col() + 
        facet_grid(tipo ~ nomes)
)