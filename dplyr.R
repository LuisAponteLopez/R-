
####################
#                  #
# Copia todo esto! #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# T3V2 - manipulación de datos

# Objetivo: diferenciar formas de graficar en r
# ------------------------------------------------
# En este ejercicio vamos a:
# 1. cargar datos de gapminder
# 2. filtrar datos
# 3. hacer resumenes de datos

################################
# 1. cargar datos de gapminder #
################################

# instalando paquete con los datos
 install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data(gapminder)

# mostrar los datos en consola
head(gapminder)


##############################
# 2. filtrar datos con dplyr #
##############################

install.packages("tidyverse")
library(tidyverse)

# filtrar datos por pais sin %>% 
filter(gapminder,country =='Mexico')

# filtrar datos por pais
# para hacer %>% en RStudio (cntrl + shift + M)

gapminder %>% 
  filter(country =='Mexico')
# filtrar datos por año
gapminder %>%  
  filter(year ==2002)
# filtrar paises con esperanza de vida 
# menor o igual a 40 y el año en 2002
gapminder %>% 
  filter(lifeExp<=40,
         year==2002)


###############################
# 3. hacer resumenes de datos #
###############################

# cantidad de paises en Asia
gapminder %>% 
  filter(continent=='Asia',
         year == 2007) %>% 
  summarise(conteo=n())#la intrucion que nos da la cantidad de paises

# maxima esparanza de vida
gapminder %>% 
  summarise(max_lifeExp=max(lifeExp))

# agrupando esperanza de vida promedio por año
gapminder %>% 
  group_by(year) %>% 
  summarise(promedio_vida=mean(lifeExp))
  