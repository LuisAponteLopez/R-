# Crear una matriz con cuatro alumnos (de este curso) y su edad, año de nacimiento y
# número de teléfono. Deberá aparecer el nombre de la columna (“edad”, “año de nacimiento”,
#                                                               “teléfono”) y el nombre de la fila, que será el nombre del alumno al que corresponden los datos.


#crear matriz
m1<-matrix(c('Luis',24,'04/08/1998',7875077314,
           'Juan',30, ' 07/15/1992',9392077315,
           'Maribel',34,'12/04/1988',7878761832,
           'Damian',5,'12/31/2017',7871234567),
           ncol = 4,
           byrow = TRUE)
colnames(m1)<-c('Nombre','Edad','Año_nacimiento','Telefono')
m1



