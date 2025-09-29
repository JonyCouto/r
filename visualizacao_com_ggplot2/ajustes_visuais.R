source("visualizacao_com_ggplot2/data_frame_inicial.R")

print(
  ggplot(df, aes(x = nomes, y = vendas)) 
  + geom_col(
    fill="lightgreen" # fill preenche com a cor
  )
  + labs( # labs é usado para contralar todos labels do gráfico
    title = "Vendas por vendedor",
    subtitle = "Dados puramente de exemplo",
    x = "Vendedores",
    y = "Vendas"
  )
)

print(
  ggplot(df, aes(x = nomes, y = vendas)) 
  + geom_point(
      color="lightgreen" # color é usado em gráficos que não precisam de preencher
  )
)

# é possível usar temas já prontos
print(
  ggplot(df, aes(x = nomes, y = vendas))
  + geom_col(
    fill = "lightgreen" # é possível personalizar e aplicar thema junto
  )
  + theme_dark()
)
print(
  ggplot(df, aes(x = nomes, y = vendas))
  + geom_col()
  + theme_classic()
)
print(
  ggplot(df, aes(x = nomes, y = vendas))
  + geom_col()
  + theme_minimal()
)

# possível configurar elementos das labels
print(
  ggplot(df, aes(x = nomes, y = vendas))
  + geom_col()
  + labs(
    title = "Vendas por vendedor",
    subtitle = "Dados puramente de exemplo"
  ) +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust=0.5),
    plot.subtitle = element_text(size = 14, face = "bold", hjust=0.5),
    axis.text = element_text(size = 12, color = "green"),
    axis.title = element_text(size = 14, face = "italic")
  )
)

# criação de escalas
# scale_fill_manual e scale_color_manual controle os níveis de cores manualmente
print(
  ggplot(df, aes(x = nomes, y = vendas, fill = nomes)) # fill nessa parte aqui se assume como legenda
  + geom_col()
  + scale_fill_manual(values = c("red", "green", "blue", "yellow"))
)
# os scales continuous pode ser usado tanto para o eixo x quando para o eixo y

print(
  ggplot(df, aes(x = nomes, y = vendas))
  + geom_col()
  + scale_y_continuous(
    limits=c(0, 200), # limite coloca um início e fim no eixo
    breaks=seq(0, 200, 50), # valor de ticks no eixo, deve mostrar o valor de origem e o valor final
    labels = ~ paste(. , "vendas"), # função lambda
    # exite formatação pronta também
    # labels = comma # adiciona vírgula quanto chegar na casa dos milhares
    # labels = percent_format(scale=1) # exibe em %
  ) 
)

# rótulo de dados
print(
  ggplot(df, aes( x= nomes, y = vendas))
  + geom_col()
  + geom_text(aes(label = vendas), vjust= -0.5) # geom text coloca apenas o valor
)

print(
  ggplot(df, aes( x= nomes, y = vendas))
  + geom_col()
  + geom_label(aes(label = vendas), fill = "white", color = "black", vjust= -0.5) # geom label coloca o valor dentro de uma mini caixinha
)

# legendas podem ser posicionas em top, bottom, left, right
# e podem ser customizadas também
print(
  ggplot(df, aes(x = nomes, y = vendas, fill = nomes))
  + geom_col()
  + theme(
    legend.position = "top",
    legend.text = element_text(size = 12, color = "white", face = "bold"),
    legend.background = element_rect(fill = "black", color = "white"),
    legend.title = element_text(size = 12, color = "white", face = "bold")
  )
)
