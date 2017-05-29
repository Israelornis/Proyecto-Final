### Activar librerias
library(ape)
library(phytools)

### Leer el arbol de verosimilitud del output bipartitions de
### RAxML
tree <- read.tree("..\\data\\data_input\\RAxML_bipartitions.tre")

### Ver contenido
tree

### Laderizamos el arbol
tree <- ladderize(tree, right=FALSE)

### Graficar arbol
plot.phylo(tree, show.node.label = TRUE, type = "phylogram", 
           edge.width = 3, cex = 1)

### Exportar arbol filogenetico en fomrato png
dev.copy(png, "..\\figures\\ML_tree.png")
dev.off()
