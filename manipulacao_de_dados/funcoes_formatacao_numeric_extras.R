library("dplyr")
source("manipulacao_de_dados/data_frame_example.R")

pi <- 3.14125
# round(x, digits = n) → arredonda
print(round(pi, digits = 3))
# floor(x) → arredonda para baixo
print(floor(pi))
# ceiling(x) → arredonda para cima
print(ceiling(pi))
# cumsum(x) → soma cumulativa - retorna um data frame
print(cumsum(df["nota"]))
# cumprod(x) → produto cumulativo - retorna um data frame
print(cumprod(df["nota"]))