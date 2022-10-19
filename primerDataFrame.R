genero <- c("h", "m", "m", "h","m","h","m", "h", "m", "m")
edad <- c(23,45,34,39,60,52,44,59,32,40)

#crear dataframe
mispacientes<-data.frame(genero,edad)

#a~adir columna
glucemia_basal<-c(123,230,180,164,210,220,193,202,152,185)
Tra_antidiabetes<-c("no",'si','no','no','si','no','si','si','no','no')
mispacientes<-cbind(mispacientes,glucemia_basal,Tra_antidiabetes)