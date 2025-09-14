setRepositories()
library(readxl)
library(tidyverse)
library(ggplot2)
data("diamonds")
df <- diamonds
ggplot(data = df)+geom_bar(mapping = aes(x=cut))

ggplot(data = df)+ stat_count(mapping = aes(x=cut))

ggplot(data = df)+geom_bar(mapping = aes(x=cut , colour = cut))

