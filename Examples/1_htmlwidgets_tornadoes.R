# data are from 

# library("rgdal")

# Torn = readOGR(dsn = ".", layer = "torn")

# Torn$Year = as.integer(Torn$yr)
# Torn = subset(Torn, Year > 2010)

# View(Torn)

#Torn1 <- as_tibble(Torn)
#Torn1 %>% write_csv('Torn.csv')

library(tidyverse)

Torn <- read_csv("~/The-Little-R-Workshop-A-Primer/Examples/data/torn/Torn.csv")

Torn1 <- Torn[ which((Torn$st=='MO' | Torn$st=='KS') & Torn$yr== 2016), ]

View(Torn1)

library("leaflet") 

leaflet() %>% addTiles() %>% setView(-94.582399, 39.098217, zoom = 9) %>% 
  
  addMarkers(data = Torn1, lat = ~ slat, lng = ~ slon, popup = Torn1$date)

# Torn2 <- as_tibble(Torn1)

# Torn2 %>% write_csv('Torn2.csv')
