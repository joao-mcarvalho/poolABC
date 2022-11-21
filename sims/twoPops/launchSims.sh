#!/bin/bash
#SBATCH --job-name=twoPops
#SBATCH --time=20:00:0
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH -p fct
#SBATCH -q cpca097952021
#SBATCH --error twoPops%A_%a.err
#SBATCH --output twoPops%A_%a.out

###
### 0. SETTINGS
###
# Path to the working directory
wrkdir="/users3/fculce3c/jgcarvalho/twoPops/ark"

echo "Foldertag is ${foldertag}"

###
### 1. START THE ARRAY JOB
###    
# go to correct folder
echo "Entering folder: ${wrkdir}/${foldertag}"

cd  ${wrkdir}/${foldertag}

module load r-3.6.3

Rscript simArk.R $SLURM_ARRAY_TASK_ID

echo "Sims done!"
