# classes no R funciona um pouco diferente das outras linguagens, existe 3 tipos de classes
# S3 → simples, flexível (mais comum no R base).
# ela é iniciado como um objeto simples e depois gerado uma classe em cima do objeto criado
pessoa = list(nome="Jonathan", idade=26)
# criação da minha classe a partir do objeto criado
class(pessoa) <- "Pessoa"
# criando uma função para a minha classe Pessoa
print.Pessoa <- function(obj){
  cat("Olá, meu nome é", obj$nome, "e tenho", obj$idade, "anos", "\n") # cat é o modelo ideal para fazer saídas melhores
  # pois o paste não imprime nada, apenas concatena, o cat imprimi e concatena
  # ele inclusive mostra apenas o resultado e não sai com aquele numeral antes
}
print(pessoa)


# S4 → mais estruturado, com verificação de tipos.
# primeiro a classe criada e depois o objeto é instanciado
setClass("Carro", slots=list(marca = "character", ano= "numeric"))
c1 <- new("Carro", marca = "Ford", ano = 2025)
print(c1@marca) # atenção, é um @ que acessa o atributo de uma classe S4


# R6 → mais parecido com OOP moderna (usado em pacotes atuais)
# essa precisa de importar R6 para poder usar
library(R6)
# initialize para construtor
# controle de segurança aos atributos e métodos é feito a partir de um atributo, public, private
# validações de tipos no R6 devem ser feitas na construção da classe
Produto <- R6Class("Produto", 
                   public = list(
                     nome = NULL,
                     idade = NULL,
                     initialize = function(nome, idade){
                       if (!is.character(self$nome)) stop("nome deve ser texto")
                       if (!is.numeric(self$idade)) stop("idade deve ser inteiro")
                       self$nome = nome
                       self$idade = idade
                     },
                     mostrar = function(){
                       cat("Olá, me chamo", self$nome, "e tenho", self$idade, "anos", "\n")
                     })
                  )
# para criar o objeto é com $ e chamar a função new
p = Produto$new("Jonathan", 26)
# tudo é acessado com $ como na S3
p$mostrar()