README
=========

Este repositorio contiene los scripts para el ensamblaje de novo de mitogenomas a partir de elementos ultra conservados de la especie en ineteres y mitogenomas de una especie filogenéticamente emparentada para el mapeo, así como el script para obtener la filogenia de máxima verosimilitud en RAxML y los scripts de R usados para el ploteo del arbol filogenetico y red filogenetica. Adicionalmente contiene todos los outputs del ensamblaje y analisis filogenetico.


Carpeta bin (Scripts)
#############################################################################################################################################################################################

Directorio 'bin' contiene los scripts y funciones en R usados para los analisis.

**1. El Script llamado "Script_RAxML.r" lee el arbol filogenetico obtenido del RAXML que se encuentra en el directorio '/data/input/RAxML_bipartitions.tre' y lo plotea en un ambiente bioinformatico R, para posteriormente poner los valores de soporte y exportar la figura en la carpeta "figure".

**2. El Script llamado "Script_Splits_Tree.r" lee la red filogenetica obtenida del programa Splits Tree que se encuentra en el directorio '/data/input/Mitogenomas_network.nex' y lo plotea en un ambiente bioinformatico R, para posteriormente exportar la figura en la carpeta "figure".

**3. El Script denominado 'Script_MITObim.sh' corre el programa MITObim 1.9 sobre cada uno de los archivos fastq y el archivo fasta para la reconstruccion de novo del mitogenoma de la especie de interes.

**4. El Script denominado 'Script_phylogenetic.sh' corre el programa programa RAxML sobre el archivo Mitogenomas.phy que se encuentra en el siguiente directorio /data/input/Mitogenomas.phy'.



Data (input, output, raw, filtered)
#############################################################################################################################################################################################

#### Input data
El directorio "data" contiene las carpetas de entrada y salida de los programas utilizados para los alineamientos, analisis filogeneticos y redes filogeneticas
Dentro del directorio "data" se encuentra la carpeta "raw_genetic_data" que contiene las versiones downstream de los fastq (tres en total) para cumplir con el requisito de tener archivos de que pese poco (aproximadamente 1.5 MB) y que fueron obtenidos mediante las primeras 10,000 lineas de los archivos originales disponibles en GenBank. Ademas se encuentra el archivo fasta de Arremon_aurantiirostris que sirvio como input para el ensamblado de novo en MITObim.

#### Output data
Dentro de esta carpeta se encuentra todos los outputs (resultados) de los programa CSA, MAFFT, MITOS, RAxML y Splits Tree, cada uno separada por su respectiva carpeta.

### Filtered dat
Esta carpeta contiene el fasta de los mitogenomas descargados con los mitogenomas ensamblados.

#### Raw genetic data
Dentro del directorio "data" se encuentra tambien la carpeta "raw_genetic_data" que contiene las versiones downstream de los fastq (tres en total) para cumplir con el requisito de tener archivos de que pesen poco (aproximadamente 1.5 MB) y que fueron obtenidos mediante las primeras 10,000 lineas de los archivos originales disponibles en GenBank. Ademas se encuentra el archivo fasta de Arremon_aurantiirostris que sirvio como input para el ensamblado de novo en MITObim.



Figures
#############################################################################################################################################################################################
En esta carpeta se encuentran todas las figuras de los resultados en R, es decir el arbol de maxima verosimilitud y la red filogenetica.



Meta
#############################################################################################################################################################################################
El archivo csv contiene las pares de bases que fueron recuperadas en el ensamblaje de novo para las tres especies de interes y que fueron anotadas por el programa CSA.
