numero <- seq(2:1001)
contador = 0
multiplicador = 1
for (i in numero){
  if((i%%2)==0){
    contador=contador+i
    multiplicador = multiplicador*i
  }
}
contador
multiplicador