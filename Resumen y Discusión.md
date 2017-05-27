# Resumen

### Israel Moreno-Contreras*°
*Ornitología, Facultad de Ciencias, UNAM
°Departamento de Ciencias Químico-Biológicas, UACJ

## Ensamblaje *de novo* de mitogenomas y analisis filogenómico del clado Passeroidea (Aves: Passeriformes)
Passeroidea es un grupo monofilético de aves passerinas (Orden Passeriformes), el cual se encuentra dentro del clado Passerida (la radiación de aves passerinas más reciente). El clado Passeroidea se caracteriza principalmente debido a su tamaño ya que contiene apróximadamente 20 familias y 1500 especies. Las relaciones dentro del clado son bastante inciertas dado que análisis empleando genes puntuales dan topologías completamente distintas (Selvatti et al. 2015). 

En este proyecto se tienen dos objetivos principales:
   + Ensamblar mitogenomas de *novo* con base en datos obtenidos de secuenciación másiva de la plataforma Illumina, 
     elementos ultra conservados (UCEs).
   + Obtener una filogenia y una red filogenética de los mitogenomas ensamblados y de los mitogenomas disponibles en bases de datos 
     correspondientes a los linajes principales de Passeroidea.

### Métodos
Como referencia para la construcción de mitogenomas *de novo*, yo utilicé secuencias previamente publicadas de obtenidas por el método de secuenciación másiva de la plataforma Illumina, específicamente elementos ultra conservados (UCEs) analizados en detalle por Bryson et al. (2016) y disponibles en GenBank (BioProject SRP073341 , https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP073341). Para la construccion de mitogenomas empleé como caso de estudio sólo tres archivos "fastq" correspondientes a los datos UCEs de las especies *Arremon brunneinucha* (no. acceso SRX1705981), *Atlapetes citirnellus* (no. acceso SRX1705980) y *Amphispiza belli* (ahora *Artemisiospiza belli*, no acceso SRX1705979).

Los mitogenomas fueron primeramente rotados con el algortimo CSA (Fernandes et al. 2009) para una mejor detección de señal filogenética y posteriormenten alineados en MAFFT v. 7.222 (Katoh y Standley 2013).
El árbol filogenético fue construido con máxima verosimilitud en RAxML v. 8.2.4 (Stamatakis 2014) usando como outgroup un ave suboscine (*Cnemotriccus fuscatus*) con un modelo evolutivo GTRGAMMA y con 1000 pseudoreplicaciones para agregar soporte estadístico a los clados formados.
Inline-style: 
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/RAxML_bipartitions.result.jpg "Logo Title Text 1")
Inline-style: 
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Mitogenomas-Blocks.bmp "Logo Title Text 1")



Anteriormente (ver Avances 1 y 2) yo estaba interesado en hacer análsis de genética de poblaciones usando los datos genómicos (ddRAD) de *Ammodramus nelsoni* y *Ammodramus caudacutus* de Walsh et al. (2017) disponibles en Dryad. No obstante despues de una revisión en el material suplementario y en el repositorio de Dryad no se encuentran disponibles los barcode, esenciales para los análisis en el programa bioinformático Ipyrad. Bajo esta premisa, decidí cambiar de datos empleando los datos genómicos del género *Piranga*  (RAD-seq) de Manthey et al. (2016), enfocandome en análisis de filogenómica y ya no de genética de poblaciones.
He tenido algunos problemas con los datos, pero el lunes me quede de ver con Azalea para ver que es lo que está fallando. Espero resolverlo para mediados de la próxima semana.

**Tipo de datos:** Ddatos genómicos del género *Piranga*  (RAD-seq) de Manthey et al. (2016) disponibles en Genbank (https://www.ncbi.nlm.nih.gov/sra/?term=Piranga), con algunos datos descriptivos en Dryad.

| Actividad     | Estado |
| ------------- |:-------------:|
| Descargar datos del repositorio Dryad     | Listo  |
| Montar un volumen en docker para analizar los datos     | Listo   | 
| Instalar ipyrad | Listo |   
| Instalar RAxML | Listo |  
| Instalar PAUP | Listo |
| Análisis de máxima verosimilitud | Pendiente |  
| Organizar repositorio | Pendiente |
|[README](https://github.com/Israelornis/ProyectoFinalBioinf2017-II/blob/master/README.md) | <span style="color:red"> Pendiente</span> |

### Artículos leídos

+ Bryson, R.W.Jr., B.C Faircloth, W.L.E. Tsai, J.E. McCormack y J. Klicka. 2016. Target enrichment of thousands of ultraconserved elements sheds new light on early relationships within New World sparrows (Aves: Passerellidae). The Auk 133(3):451-458. http://dx.doi.org/10.1642/AUK-16-26.1

+ Fernandes, F., L. Pereira y A.T. Freitas. 2009. CSA: An efficient algorithm to improve circular DNA multiple alignment. BMC Bioinformatics 10:230.  https://doi.org/10.1186/1471-2105-10-230

+ Gibb, G.C., O. Kardailsky, R.T. Kimball, E.L. Braun y D. Penny. 2007. Mitochondrial Genomes and Avian Phylogeny: Complex Characters and Resolvability without Explosive Radiations. Molecular Biology and Evolution 24(1):269-280. https://doi.org/10.1093/molbev/msl158

+ Katoh, K. y D.M. Standley. 2013. MAAFT Multiple Alignment Software Version 7: Improvements in Performance and Usability. Molecular Biology and Evolution 30(4):772-780. https://doi.org/10.1093/molbev/mst010

+ Selvatti, A.P., L.P. Gonzaga y C.A. Russo. 2015. A Paleogene origin for crown passerines and the diversification of the Oscines in the New World. Molecular Phylogenetics and Evolution 88:1–15. https://doi.org/10.1016/j.ympev.2015.03.018

+ Stamatakis, A. 2014. RAxML version 8: a tool for phylogenetic analysis and post-analysis of large phylogenies. Bioinformatics 30(9):1312-1313. https://doi.org/10.1093/bioinformatics/btu033


### Datos y análisis
+ Manthey JD, Campillo LC, Burns KJ, Moyle RG (2016) Data from: Comparison of target-capture and restriction-site associated DNA sequencing for phylogenomics: a test in cardinalid tanagers (Aves, genus: Piranga). Dryad Digital Repository. http://dx.doi.org/10.5061/dryad.j5n06

**Análisis a realizar:** Se realizarán algunos análisis de Filogenómica empleando distintos parametros en Ipryrad: Máxima Verosimilitud, SVD quartets. Se harán gráficas para ver que tanto influyen los parámetros en la obtención de pares de bases.
