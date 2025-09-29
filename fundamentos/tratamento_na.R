range = c(1, 2, 3, NA, 4, NA, 20, NA, NA, NULL)

print(is.na(range)) # mostra quais dados estão com NA através do vetor lógico
print(range[!is.na(range)]) # filtra apenas os dados com valores válidos
print(sum(is.na(range))) # conta quantos valores estão com NA

print(na.omit(range)) # filtra apenas os dados com valores válidos, usado para remover valores nulos


df <- data.frame(nome=c("Ana","Beto","Carla"),
                 idade=c(23, NA, 30),
                 nota=c(8, 9, NA))

print(complete.cases(range)) # retorna vetor lógicos mostrando quais estão preenchidas e quais não
print(df[complete.cases(df),]) # se usado em dataframe retorna apenas as linhas completas
