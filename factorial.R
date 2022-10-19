contador<- 1# el que va a calcular el factorial
numero<-3 # el numero que se quiere calcular
secuencia <- seq(0,numero)
for(i in secuencia){
  if(i>1){
    contador=contador*i
  }
}
contador
