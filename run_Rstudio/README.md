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

#### Step 5) Follow promts in teh generated text file to open RStudio in your web browser
