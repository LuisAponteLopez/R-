
library(tidyverse)
library(gganimate)
library(gifski)
library(gapminder)

#cargar datos de entorno
data('gapminder')

#cargar datos a entorno
head(gapminder)

##################
#grafica basica
##################
gapminder %>% 
  group_by(year,continent) %>% 
  summarize(mean_life=mean(lifeExp)) %>% 
  ggplot(aes(x=year,
             y=mean_life,
             color=continent))+
  geom_line()

################
#grafica animada 
#################
gapminder %>% 
  group_by(year,continent) %>% 
  summarize(mean_life=mean(lifeExp)) %>% 
  ggplot(aes(x=year,
             y=mean_life,
             color=continent))+
  geom_line()+
  transition_reveal(year)

#####################
#mejorar la animacion
######################
gapminder %>% 
  group_by(year,continent) %>% 
  summarize(mean_life=mean(lifeExp)) %>% 
  ggplot(aes(x=year,
             y=mean_life,
             color=continent))+
  geom_line(size=2)+
  geom_point(size=4)+
  labs(title='Esperanza de vida en {frame_along}',#framr_alonh para que cambie el año.
        x='Fecha',
        y='Años de vida')+
  theme_minimal()+
  transition_reveal(year)
