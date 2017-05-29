### Activar librerias
library(ape)
library(phangorn)
library(zoom) ### Para visualizar y editar a mano la red filogenetica

### Leer la red filogenetica obtenida de Splits Tree
Nnet <- read.nexus.networx("..\\data\\data_input\\Mitogenomas_network.nex")

### Ver contenido
Nnet

### Visualizar la red filogenetica
plot(Nnet,"2D", cex = 0.5)

### Exportar arbol filogenetico en fomrato png. Esta version le llame "Nnet.jpeg"
dev.copy(jpeg, "..\\figures\\Nnet.jpeg")
dev.off()

### Editar el plot de la red con una sesion con la libreria zoom. 
### Hice dos version en zoom llamadas "Network_zoom_version.jpeg" y "Nnet2.jpeg" y estan guardada en la carpeta figures.
zm()

