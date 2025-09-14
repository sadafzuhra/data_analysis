#activating repositories----
setRepositories()
library(readxl)
library(ggplot2)
library(tidyverse)
View(df)
#point plot----
ggplot(data = df )+geom_point(mapping = aes(x = displ, y= hwy, colour = class)) +facet_grid(drv ~.)

ggplot(data = df )+geom_point(mapping = aes(x = displ, y= hwy, colour = class)) +facet_grid(.~ cyl)

ggplot(data = df )+geom_point(mapping = aes(x = displ, y= hwy, colour = class)) + facet_wrap(~class,nrow = 2)
#smooth plot----
ggplot(data = df )+geom_smooth(mapping = aes(x = displ, y= hwy)) 

ggplot(data = df )+geom_smooth(mapping = aes(x = displ, y= hwy, linetype = drv)) 

ggplot(data = df )+geom_smooth(mapping = aes(x = displ, y= hwy, group =  drv)) 

ggplot(data = df )+geom_smooth(mapping = aes(x = displ, y= hwy, colour =   drv) , show.legend =FALSE)
#To display multiple geoms in the same plot, add multiple geom functions to ggplot():
ggplot(data = df )+geom_point(mapping = aes(x = displ, y= hwy))+
  geom_smooth(mapping = aes(x = displ, y= hwy)) 

ggplot(data = df )+geom_point(mapping = aes(x = displ, y= hwy, colour = class))+
  geom_smooth(mapping = aes(x = displ, y= hwy)) + facet_wrap(~class)

