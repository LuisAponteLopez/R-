####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# video 05 - vectores

# Objetivo: estudiar qu? es una vector en R.
# --------------------------------------------
# En este ejercicio vamos a:
# 1. Crear vectores en un script
# 2. Realizar opraciones aritm?ticas con vectores
# 3. Seleccionar elementos en un vector


#####################################
# pr?ctica 1: creando vectores en R #
#####################################

# crear vector car?cter con nombre de las pel?culas
nombre_pelicula <- c("Harry Potter 1","Harry Potter 2","Harry Potter 3")


# crear vector num?rico con puntuaci?n de las pel?culas
puntuacion_pelicula <- c(10,9,8)

# crear vector l?gico sobre si la pel?cula es posterior a 2015
posterior_2015 <- c(TRUE,TRUE,TRUE)

####################################################
# pr?ctica 2: operaciones aritm?ticas con vectores #
####################################################

# sumar 2 a la puntuaci?n
puntuacion_pelicula+2

# dividir la puntuaci?n entre 2
puntuacion_pelicula/2

# crea la puntuaci?n de rafa
puntuacion_rafa <- c(4,5.8,9)

# calcular diferencia entre puntuaciones
puntuacion_pelicula - puntuacion_rafa

# calcular la longitud del vector
length(puntuacion_pelicula)

# calcular el promedio del vector puntuacion
mean(puntuacion_pelicula)

###################################################
# pr?ctica 3: selecci?n de elementos de un vector #
###################################################

## selecci?n basada en posici?n
# seleccionar la tercera pel?cula
nombre_pelicula[3]

# seleccionar la primera y la ?ltima pel?cula
nombre_pelicula[c(1,3)]

## selecci?n basada en condici?n l?gica
# crear condici?n l?gica
puntuacion_baja <-puntuacion_rafa < 7

# mostrar condici?n para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion_rafa[puntuacion_baja]

# mostrar nombres de pel?culas con puntuaciones bajas
nombre_pelicula[puntuacion_baja]

# Hecho con gusto por Rafa @GonzalezGouveia
# Suscribete para m?s c?digo en R https://bit.ly/2WNDhNR

