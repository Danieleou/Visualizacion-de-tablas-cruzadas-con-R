# Librerias

library(janitor) # Libreria para crear la tabla cruzada
library(CGPfunctions) # Libreria para graficar barras
library(vtree) # Libreria para graficar arboles

# Cargar los datos

videojuegos<-read.csv('videojuegos_populares.csv',header = TRUE, sep=',',dec = '.',row.names = 1)

plat_year<-tabyl(videojuegos,Year,Platform)

plat_year

plat_year_gen<-tabyl(videojuegos,Year,Platform,Genre)

plat_year_gen

# Graficando barras

PlotXTabs(videojuegos,Platform,Year) # Videojuegos segun su año por plataforma

PlotXTabs(videojuegos,Year,Platform) # Videojuegos segun su plataforma por año

PlotXTabs(videojuegos,Genre,Platform) # Videojuegos segun su genero por plataforma

# Graficando barras aplidas

PlotXTabs2(videojuegos,Platform,Genre,results.subtitle = FALSE,package = 'RColorBrewer',palette = 'Paired',label.text.size = 3) # Videojuegos segun su plataforma por genero

PlotXTabs2(videojuegos,Year,Platform,results.subtitle = FALSE,package = 'RColorBrewer',palette = 'Paired',x.axis.orientation = 'vertical',label.text.size = 3,sample.size.label = 'FALSE') # Videojuegos segun su año por plataforma