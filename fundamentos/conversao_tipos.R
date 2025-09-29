a <- "1"
Teste_Tipos <- function(el){
  if (is.numeric(el)){
    print("É numérico")
  } else if (is.character(el)){
    print("É texto")
  } else print("É outro tipo")
}

Teste_Tipos(a)
a <- as.numeric(a)
Teste_Tipos(a)
a <- as.logical(a)
Teste_Tipos(a)