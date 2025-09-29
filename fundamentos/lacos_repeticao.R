# uso de for
for (i in 1:5){
  print(i)
}
for (el in c("Olá", "Mundo", "!")){
  print(paste(el))
}

# while
x <- 5
while (x < 7){
  x <- x + 1
}
print(x)

# repeat - laço infinito até encontrar um break
repeat{
  x <- x + 1
  print(x)
  if (x == 10){
    break
  }
}

# break e next
for (i in 1:10){
  if (i == 5){
    next
  }
  if (i == 8){
    break
  }
  print(i)
}