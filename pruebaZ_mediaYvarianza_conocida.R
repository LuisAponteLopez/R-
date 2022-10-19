#############################
#   Pruebas de hip�tesis    #
#############################

# 1  estad�stico de prueba
datos <- c(1496,1500,1510,1485,1503,1491,1506,1526,1493,1488,1495,1503,1528,1496,1491,1497)
n<-length(datos)
xbarra<-mean(datos)
sigma<-15
alpha<-.2

mu0<-1506
z0<-(xbarra-mu0)/(sigma/sqrt(n))
z0

#2 Region critica
limizq <- qnorm(alpha/2)
limder <- - limizq

#3 prueba con la regi�n cr�tica
#Rechazar H0 si z0<=limizq, o si z0>=limder

if(z0<=limizq || z0>=limder){
  Resultado<-"Rechazar H0"
}else{Resulatdo<-"No rechazar H0"}

#4 concluir
Resultado

#5Calcular del p_value 
#(es una probabilidad condicional)
#la probabilidad de rechazar h0 dado el estadistico de muestra
pvalue<-2*(pnorm(-abs(z0))) # 2*(1- pnorm(abs(z0)))
pvalue

if(pvalue < alpha){
  Resultado2 <- 'Rechazar H0'
}else{Resultado2 <- 'No rechazar H0'}
Resultado2

#Funcion R para hacer la prueba
library(BSDA)
z.test(datos,mu=mu0,sigma.x=sigma)
z.test(datos,mu=mu0,sigma.x=sigma, conf.level = .8)