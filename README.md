# CD_GPCC
CD Theme research cluster allocation scripts on BC Children's Hospital General Purpose Computing Cluster (GPCC). This repository contains shell scripts for obtaining RStudio docker images and launching RStudio projects on the server. 

#### Lynn Lab Projects:
- ARC
- scBeta
- hIslet
- HNF1A

#### Verchere Lab Projects:
- JDRF2
- FMT
- s961
- hIAPP

# Run RStudio Scripts

These scripts are used when you want to run RStudio on the GPCC for your project. 

#### Step 1) Open terminal and log onto the GPCC while on BCCHR wifi or connected to the VPN. 
$ ssh USERNAME@gpcc-node01.bcricwh.lan
- Replace USERNAME with your BCCHR username. 
- You will be promted for your BCCHR password. 

#### Step 2) ##### Navigate to the location of these scripts 
$ cd /mnt/common/Precision/Rstudio/scRNAseq/

#### Step 3) Submit the project script to slurm scheduler
$ sbatch run_s961.sh

#### Step 4) Open the text file generated from the script you ran, replacing NUMBER with the  the project script to slurm scheduler
$ cat connection_NUMBER.txt

<img width="625" alt="Screen Shot 2022-10-04 at 3 27 36 PM" src="https://user-images.githubusercontent.com/62624873/193941661-2568c6a7-53b9-4741-a4c8-5659c80f0b3e.png">

#### Step 5) Follow promts in the generated text file to open RStudio in your web browser
##### In a new terminal paste:
$ ssh -N -L 8787:gpcc-node09:NUMBER USERNAME@gpcc-node09 
- change number and username
- you will be promted for your BCCHR password
- it will just hang there if it works
paste http://localhost:8787 into your web browser and log in with your BCCHR username and password from the txt file.
