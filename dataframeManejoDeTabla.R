#utilizar para la manipulacion de datos
install.packages('dplyr')

#crear dataFrame

nombres<-c('Luis','Juan','Isabel')
edad<-c(24,23,22)
genero<-c("masculino","masculino","femenino")

df<-data.frame(nombres, edad, genero)
df
#manipular datos

#tener la columna edad
df['edad']

#buscar una fila con un parametro
df[df$genero=="femenino",]

#a~adir fila
df<-rbind(df,list("Maribel",45,"femenino"))

#a~adir columna 
df<-cbind(df,Hijo=c(TRUE,FALSE,TRUE,TRUE))

