# Resumen

## Israel Moreno-Contreras
#### Ornitología, Facultad de Ciencias, UNAM


## Ensamblaje *de novo*, anotación de mitogenomas y analisis filogenómico del clado Passeroidea (Aves: Passeriformes)
Passeroidea es un grupo monofilético de aves passerinas (Orden Passeriformes), el cual se encuentra dentro del clado Passerida (la radiación de aves passerinas más reciente). El clado Passeroidea está constituido por miembros de la familia Estrildidae, Cardinalidae, Icteridae, entre otros; y se caracteriza principalmente debido a su tamaño ya que contiene apróximadamente 20 familias y 1500 especies (dependiendo de la autoridad taxonómica). Las relaciones dentro del clado son bastante inciertas dado que análisis empleando genes puntuales dan topologías completamente distintas (Selvatti et al. 2015). 

En este proyecto se tienen dos objetivos principales:
   + Ensamblar mitogenomas de *novo* con base en datos obtenidos de secuenciación másiva de la plataforma Illumina, 
     elementos ultra conservados (UCEs).
   + Obtener una filogenia y una red filogenética de los mitogenomas ensamblados y de los mitogenomas disponibles en bases de datos 
     correspondientes a los linajes principales de Passeroidea.

### Métodos
Como referencia para la construcción de mitogenomas *de novo*, yo utilicé secuencias previamente publicadas y obtenidas por el método de secuenciación másiva de la plataforma Illumina, específicamente elementos ultra conservados (UCEs) analizados en detalle por Bryson et al. (2016) y disponibles en GenBank (BioProject SRP073341 , https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP073341). Para la construccion de mitogenomas empleé como caso de estudio sólo tres archivos "fastq" correspondientes a los datos UCEs de las especies *Arremon brunneinucha* (no. acceso SRX1705981), *Atlapetes citirnellus* (no. acceso SRX1705980) y *Amphispiza belli* (ahora *Artemisiospiza belli*, no acceso SRX1705979) y como mapeo de referencia un mitogenoma (en formato "fasta") publicado de una especie filogenéticamente emparentada (*Arremon aurantiirostris*, no. acceso KR780064.1) con las especies que ensamblé.
Para el ensamblaje *de novo* trabajé con el ensamblador MIRA v. 4.0.2 (Chevreux et al. 2004) y con el software MITObim v. 1.9 (Hahn et al. 2013), utilizando el método de “reconstrucción directa sin mapeo previo” con la estrategia rápida (“--quick”) y poniendo como número máximo de iteraciones 30 (valor por default).
Una vez obtenidos los mitogenomas ensamblados, estos fueron sometidos a la página online de MITOS (Bernt et al. 2013) para la anotación y descripción de los mitogenomas ensamblados.

En la reconstrucción filogenética los mitogenomas fueron primeramente rotados con el algortimo CSA (Fernandes et al. 2009) para una mejor detección de señal filogenética y posteriormenten alineados en MAFFT v. 7.222 (Katoh y Standley 2013).
El árbol filogenético fue construido con máxima verosimilitud en RAxML v. 8.2.4 (Stamatakis 2014) usando como outgroup un ave suboscine (*Cnemotriccus fuscatus*) con un modelo evolutivo GTRGAMMA y con 1000 pseudoreplicaciones para agregar soporte estadístico a los clados formados. Para la reconstrucción de la red filogenética entre los taxa estudiados use el programa Splits Tree v. 4.0 (Huson y Bryant 2006). La visualización del árbol filogenético así cómo de la red filogenética fue llevada a cabo en el ambiente estadístico en R v. 3.3.1 (R Development Core Team 2016).

### Resultados y discusión
De acuerdo a la anotación de los genomas ensamblados, para *Arremon brunneinucha* todos los genes fueron ensamblados, al igual que en el caso de *Atlapetes citirnellus*, no obstante para *Amphispiza belli* 7 genes no fueron encontrados (atp8, nad6, trnE, trnG, trnK, trnP, trnT, Figura 1).
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Bioinformatica_Proyecto_Final/data/data_output/MITOS/Amphispiza_belli/KR7800641bbbbbb.png "Logo Title Text 1")

Figura 1. Mitogenoma anotado de *Amphispiza belli*.

La rotación de mitogenoma en CSA fue claramente exitosa dando un fuerte en la búsqueda de señal filogenética y de esta manera mejorar el alineamiento de mitogenomas para análisis posteriores (Figura 2).
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Bioinformatica_Proyecto_Final/data/data_output/CSA/Mitogenomas-Blocks.bmp "Logo Title Text 1")

Figura 2. Mitogenomas rotados.

Se puede apreciar que Passeroidea es monofilético y resulta ser una topología completamente resuelta sin politomías (Figura 3). Los linajes más basales  resultaron ser *Padda oryzivora* (Estrildidae) y el género *Prunella* (Prunellidae). La topología resultante fue acorde a lo propuesto por una filogenia reciente (Selvatti et al. 2015).

![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Bioinformatica_Proyecto_Final/figures/ML_tree.png "Logo Title Text 1")

Figura 3. Árbol de máxima verosimilitud del clado Passeroidea.


La red filogenética fue relativamente consistente con el árbol de máxima verosimilitud. Una diferencia fue que *Atlapetes citrinellus* es más cercano a *Arremon brunneinucha* que a *Amphispiza belli*
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Bioinformatica_Proyecto_Final/figures/Nnet.jpeg "Logo Title Text 1")
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Bioinformatica_Proyecto_Final/figures/Nnet2.jpeg "Logo Title Text 1")
![alt text](https://github.com/Israelornis/Proyecto-Final/blob/master/Bioinformatica_Proyecto_Final/figures/Network_zoom_version.jpeg "Logo Title Text 1")



### Literatura citada

+ Bernt, M., A. Donath, F. Jühling, F. Externbrink, C. Florentzh, G. Fritzsch, J. Pützh y M. Middendorf. 2013. MITOS: Improved de novo metazoan mitochondrial genome annotation. Molecular Phylogenetics and Evolution 69(2):313–319. https://doi.org/10.1016/j.ympev.2012.08.023

+ Bryson, R.W.Jr., B.C Faircloth, W.L.E. Tsai, J.E. McCormack y J. Klicka. 2016. Target enrichment of thousands of ultraconserved elements sheds new light on early relationships within New World sparrows (Aves: Passerellidae). The Auk 133(3):451-458. http://dx.doi.org/10.1642/AUK-16-26.1

+ Chevreux, B., T. Pfisterer, B. Drescher, A.J. Driesel, W.E.G. Müller, T. Wetter y S. Suhai1. 2004. Using the miraEST Assembler for Reliable and Automated mRNA Transcript Assembly and SNP Detection in Sequenced ESTs. Genome Research 14:1147-1159. http://www.genome.org/cgi/doi/10.1101/gr.1917404

+ Fernandes, F., L. Pereira y A.T. Freitas. 2009. CSA: An efficient algorithm to improve circular DNA multiple alignment. BMC Bioinformatics 10:230.  https://doi.org/10.1186/1471-2105-10-230

+ Gibb, G.C., O. Kardailsky, R.T. Kimball, E.L. Braun y D. Penny. 2007. Mitochondrial Genomes and Avian Phylogeny: Complex Characters and Resolvability without Explosive Radiations. Molecular Biology and Evolution 24(1):269-280. https://doi.org/10.1093/molbev/msl158

+ Hahn, C., L. Bachmann y B. Chevreux. 2013. Reconstructing mitochondrial genomes directly from genomic next-generation sequencing reads—a baiting and iterative mapping approach.  Nucleic Acids Research 41(13):e129. https://doi.org/10.1093/nar/gkt371. 

+ Huson, D.H. y D. Bryant. 2006. Application of phylogenetic networks in evolutionary studies. Molecular Biology and Evolution 23(2):254-267. https://doi.org/10.1093/molbev/msj030

+ Katoh, K. y D.M. Standley. 2013. MAAFT Multiple Alignment Software Version 7: Improvements in Performance and Usability. Molecular Biology and Evolution 30(4):772-780. https://doi.org/10.1093/molbev/mst010

+ R Development Core Team. 2016. R: A Language and Environment for Statistical Computing, R Foundation for Statistical Computing, Vienna, Austria. http://www.R-project.org

+ Selvatti, A.P., L.P. Gonzaga y C.A. Russo. 2015. A Paleogene origin for crown passerines and the diversification of the Oscines in the New World. Molecular Phylogenetics and Evolution 88:1–15. https://doi.org/10.1016/j.ympev.2015.03.018

+ Stamatakis, A. 2014. RAxML version 8: a tool for phylogenetic analysis and post-analysis of large phylogenies. Bioinformatics 30(9):1312-1313. https://doi.org/10.1093/bioinformatics/btu033
