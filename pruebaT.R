contenido<-c(510,492,494,498,496,502,491,507,496)

#observar los datos
plot(contenido)
hist(contenido)

qqnorm(contenido)
qqline(contenido)

library("nortest")

shapiro.test(contenido)



##hipotesis


t.test(contenido,alternative = "two.side",
       conf.level = 0.95,mu=500)
