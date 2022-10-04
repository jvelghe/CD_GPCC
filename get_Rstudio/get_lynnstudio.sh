#!/bin/bash

# Phil Richmond and Jane Velghe
# Lynn Lab RStudio docker image pull

#SBATCH --partition=defq
## CPU Usage
#SBATCH --mem=8G
#SBATCH --cpus-per-task=1
#SBATCH --time=30:00
#SBATCH --nodes=1

## Output and Stderr
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.error

## Email Settings
## CHANGE YOUR EMAIL HERE
#SBATCH --mail-user=jfvelghe@student.ubc.ca   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --signal=USR2

#  load modules
#module load Software_Collection/2019
#module load gcc/5.4.0
#module load singularity/3.2.1

# Load software environment
module load gcc
module load singularity
module load hdf5

# Change to your directory where you'll keep the SIF 
#Home_Dir=/scratch/tr-precisionhealth-1/Workshops/StudentSpaces/$USER/scRNAseq/
Home_Dir=/mnt/scratch/Precision/CD/Lynn

#mkdir -p $Home_Dir
cd $Home_Dir

# Set your singularity cache
export SINGULARITY_CACHEDIR=$PWD

# Pull rocker with singularity
# Example here using this image: https://hub.docker.com/layers/bioconductor_docker/bioconductor/bioconductor_docker/RELEASE_3_15/images/sha256-84b77d1fa2edd3245edc48afdd42c4bc48678e412d2567089f1d87900c16b0bb?context=explore
singularity pull --name rstudio-bioconductor-Release_3_15.simg docker://bioconductor/bioconductor_docker:RELEASE_3_15
