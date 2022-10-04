#!/bin/bash

# Jane Velghe OCt. 4, 2022
# RStudio docker image pulls for GPCC CD Allocation

sbatch get_vstudio.sh
sbatch get_s961.sh
sbatch get_jdrf2.sh
sbatch get_hiapp.sh
sbatch get_fmt.sh

sbatch get_lynnstudio.sh
sbatch get_arc.sh
sbatch get_hnf1a.sh
sbatch get_hislet.sh
sbatch get_scbeta.sh