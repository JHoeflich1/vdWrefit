#!/bin/bash
#SBATCH -J vdWFB 
#SBATCH -p aa100
#SBATCH -t 7-00:00:00
#SBATCH --qos=long
#SBATCH --gres=gpu
#SBATCH --mem=10000mb
#SBATCH --account ucb500_asc1
#SBATCH --export=ALL
#SBATCH -o run02.out
#SBATCH -e run02.err

# Load any required modules or activate your conda environment
# module load cuda/11.2
# source activate myenv
ml anaconda
conda_env="sep-2024-env"
source $HOME/.bashrc
conda activate $conda_env

# Run the Python script
python run_evaluator.py

echo "All done"

