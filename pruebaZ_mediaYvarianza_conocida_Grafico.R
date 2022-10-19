
datos <- c(1496,1500,1510,1485,1503,1491,1506,1526,1493,1488,1495,1503,1528,1496,1491,1497)
n<-length(datos)
xbarra<-mean(datos)
sigma<-15
alpha<-.2

mu0<-1506

#limires de la region de aceptacion
ejex <- seq(-3,3,0.01)
ejey<-dnorm(ejex)
plot(ejex,ejey,type="l",lwd=3)
polygon(c(3,-3,ejex),c(0,0,ejey),col="yellow")
abline(v=0)
####################
ejex <- seq(-3,3,0.01)
ejey <- dnorm(ejex)
plot(ejex,ejey,type='l', lwd=3)
lizq <- qnorm(alpha/2)
aux.x <- ejex[ejex<=lizq]
aux.y <- dnorm(aux.x)
polygon(c(3,-3,aux.x,lizq),c(0,0,aux.y,0),col='yellow')
polygon(c(-lizq,-rev(aux.x),3),c(0,rev(aux.y),0),col='yellow')
text(-2,0.3,'Region de rechazo area amarilla')
text(2,0.3,'Region de rechazo area amarilla')
text(0,0.1,'Regi0n de aceptacion')
abline(v=0)
##############################
abline(v=z0, col =2)
aux.z0 <- abs(z0)
aux2.x <- ejex[ejex<=-aux.z0]
aux2.y <- dnorm(aux2.x)
polygon(c(3,-3,aux2.x,-aux.z0),c(0,0,aux2.y,0),col='blue')
polygon(c(aux.z0,-rev(aux2.x),3),c(0,rev(aux2.y),0),col='blue')
##############################
title(paste('pvalue = 2P(Z<=-abs(z0))=',round(pvalue,5)))
