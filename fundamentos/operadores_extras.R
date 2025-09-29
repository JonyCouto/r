# existem alguns operadores que são específicos da linguagem
x <- c(1, 2, 3, 4, 5)
# verificar se o valor existe denro do conjunto
print(5 %in% x)
# criação de sequências incluindo todos os números do começo e do fim
y <- 1:10
print(y)
library(magrittr)
# concaternar na função (pipe) precisa de uma library
1:5 %>% sum() %>% print() 
1:5 %>% sum() %>% cat("Soma", .) # se eu quisar passar o valor do argumento do pipe como outra posição
# eu posso usar o .