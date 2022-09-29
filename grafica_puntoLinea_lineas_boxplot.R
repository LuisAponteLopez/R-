library(ggplot2)

data('isis')
head(iris)
#ejemplo 1: puntos y lineas
ggplot(data=iris,
       mapping=aes(x=Sepal.Length,
                   y=Sepal.Width,
                   color=Species))+
  geom_point()+
  geom_smooth(method = 'lm')##linea de tendencia
##methon='lm' hace qye la linea de tendencia sea lineal.

##########################
#ejemplo 2: varias lineas 
#########################
##util para los tiempo
#una linea  ()
ggplot(data=iris[iris$Species=='setosa',],
       mapping = aes(x=1:50,
                     y=Petal.Width))+
  geom_line()

#Todas las lineas
ggplot(data=iris,
       mapping = aes(x=rep(1:50,3),#para que lo repita 3 veces
                     y=Petal.Width,
                     color=Species))+
  geom_line()

#boxplot con puntos ,
#diagrama de caja con puntos
##estudia la distrubucion de una varieble con respecto a
#distintas categoria

ggplot(dat=iris,
       mapping=aes(x=Species,
                   y=Petal.Width,
                   fill=Species))+
  geom_boxplot()+
  geom_jitter()#para ponerle los puntos


