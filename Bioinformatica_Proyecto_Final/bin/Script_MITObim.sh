#!/bin/bash

### Script para obtener mitogenoma de Amphispiza belli usando como referencias datos de UCEs y mitogenoma de Arremon_aurantiirostris con Tutorial II

./MITObim.pl -start 1 -end 30 -sample testpool -ref Amphispiza_belli_mt_genome -readpool '../data/raw_genetic_data/A_belli.fastq' --quick '../data/raw_genetic_data/Arremon_aurantiirostris.fasta'


### Script para obtener mitogenoma de Atlapetes citrinellus usando como referencias datos de UCEs y mitogenoma de Arremon_aurantiirostris con Tutorial II

./MITObim.pl -start 1 -end 30 -sample testpool -ref Atlapetes__citrinellus_mt_genome -readpool '../data/raw_genetic_data/A_citrinellus.fastq' --quick '../data/raw_genetic_data/Arremon_aurantiirostris.fasta' 


### Script para obtener mitogenoma de Arremon brunneinucha usando como referencias datos de UCEs y mitogenoma de Arremon_aurantiirostris con Tutorial II

./MITObim.pl -start 1 -end 30 -sample testpool -ref Arremon__brunneinucha_mt_genome -readpool '../data/raw_genetic_data/A_brunneinucha.fastq' --quick '../data/raw_genetic_data/Arremon_aurantiirostris.fasta'





