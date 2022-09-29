
library(tidyverse)
data("Orange") #cargar datos al entorno
head(Orange) #mostrar datos en consola

#pregunta
#Cuanto medira la circunferencias, en promedio,
#de un arbol de narajas a los 800 dias de plantarlo

#regresa pendiente y intercepto
lm(circumference~age,data=Orange)



Orange %>% 
  ggplot(aes(x=age,
             y=circumference))+
  geom_point()+
  geom_abline(intercept = 17.3997,
              slope=.1068,
              col='blue')+
  geom_vline(xintercept=800,#linea vertical en un punto en x
             col='red')
  

dias<-.1068*800+17.3997
print(dias)

