# factors é um recurso de categorizar em níveis informações de um vetor/dataframe
# muito útil para recursos de ML
sexo <- c("M", "F", "F", "M", "F")
sexo_factor <- factor(sexo)
print(sexo_factor)
print(levels(sexo_factor))

# é possível criar uma ordem de factors
df <- data.frame(
  notas = 1:10
)
df$status <- sapply(df$notas, function(x) ifelse(x <= 4, "Ruim", ifelse(x <= 6, "Melhorar", "Bom")))
notas_factor <- factor(df$status, 
                       levels=c("Ruim", "Melhorar", "Bom"),
                       ordered=TRUE)
# Ordered é usado para criar uma hierarquia
levels(notas_factor)[levels(notas_factor) == "Melhorar"] <- "Em análise" # trocar nome do level
print(levels(notas_factor))
print(notas_factor[1] > notas_factor[3])