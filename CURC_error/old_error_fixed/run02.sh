#!/bin/bash
#SBATCH -J vdWFB 
#SBATCH -p aa100
#SBATCH -t 7-00:00:00
#SBATCH --qos=long
#SBATCH --ntasks=1
#SBATCH --gres=gpu
#SBATCH --mem=10000mb
#SBATCH --account ucb500_asc1
#SBATCH --export=ALL
#SBATCH -o run02.out
#SBATCH -e run02.err

ml anaconda
source $HOME/.bashrc
conda activate test_evaluator

# Run the Python script
python run_evaluator.py

echo "All done"

