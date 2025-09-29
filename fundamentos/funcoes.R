# funções são muito parecidas com as outras linguagens, mudando apenas a sintaxe
soma <- function(n1, n2){
  return(n1 + n2) # o return é encapsulado com parênteses
}

print(soma(2, 5))

ao_quadrado <- function(n1, expo = 2){ # forma de passar default
  return(n1 ^ expo)
}

print(ao_quadrado(5))
print(ao_quadrado(5, 3))

calculos_basicos <- function(n1, n2){ # retornando dicionários
  resultado = list(
    soma = n1 + n2,
    subtracao = n1 - n2,
    multiplicacao = n1 * n2,
    divisao = n1 / n2
  )
  return(resultado)
}

print(calculos_basicos(5, 10))

retorno_opcional <- function() {
  print("eu não recebo nada e nem retorno nada")
}

retorno_opcional()
