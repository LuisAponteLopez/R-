###################
#                  #
# Copia todo esto! #
#                  #
####################
# Hecho con gusto por Rafa @GonzalezGouveia

# T2V2 - importar datos de excel a R

# Objetivo: aprender a importar datos de excel a R
# ------------------------------------------------
# En este ejercicio vamos a aprender:
# 1. Que necesitas antes de empezar
# 2. Cómo importar datos utilizando código de R
# 3. Cómo importar datos con la interfaz de RStudio


#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readxl
install.packages("readxl")

# cargar paquete readxl
library(readxl)

# buscar la ruta del archivo de excel
file.choose()##nos permite buscar el archivo 

# Copiar ruta de la consola y guardar en variable
ruta_excel<- "C:\\Users\\Aponte\\Downloads\\gapminder_importar_a_r.xlsx"


# como mirar las hojas de tu excel
excel_sheets(ruta_excel) ##vector con el nombre de las hojas

#####################################
# 2. importar excel con código de R #
#####################################

# importar caso ideal
caso_ideal<-read_excel(ruta_excel) ##datos empiezan en A1, Y estran en la primera hoja

# importar caso medio
caso_medio<-read_excel(ruta_excel,
                       sheet = 'Hoja2')


# importar caso dificil
##cuando los dato , no estan en la primera hoja y no empienza en A1
caso_dificil<-read_excel(ruta_excel,
                       sheet = 'Hoja3',
                       range = 'C7:F17')



##########################################
# 3. importar excel con interfaz RStudio #
##########################################

# ir a File > Import Dataset > From Excel...



# fin