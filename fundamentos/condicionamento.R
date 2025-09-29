# o if else funciona como a maioria das linguagens
# o else if e o else tem que ser na mesma linha que o fechamento }
x <- 5
if (x < 5){
  print("X é menor que 5")
} else if (x > 5){
  print("X é maior que 5")
} else {
  print("X é igual a 5")
}

# existe a condição inline que funciona igual o if ternário
x <- 1:3
resultado <- ifelse(x %% 2 == 0, "Par", "Ímpar")
print(resultado)

# existe o any e o all que também complementa o if e else em conjuntos
if (any(x > 2)){
  print("Tem um número maior que 2")
}

if (all(x < 5)){
  print("Todos números são menores que 5")
}