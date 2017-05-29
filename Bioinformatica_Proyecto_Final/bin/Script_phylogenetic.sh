#!/bin/bash

﻿## Script para construir la filogenia de 26 especies de aves empleando RAxML 8.2.4, con 1000 bootstraps, un modelo GTRGAMMA y con un outgroup: 

raxmlHPC.exe -f a -x 12345 -p 12345 -#1000 -m GTRGAMMA -s '../data/data_input/Mitogenomas.phy' -o Cnemotriccus_fuscatus -n '../data/data_output/RAxML/RAxML.tre

