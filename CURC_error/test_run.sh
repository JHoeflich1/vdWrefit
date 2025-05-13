#!/bin/bash
#SBATCH -J vdWFB_test
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=blanca-shirts
#SBATCH --qos=blanca-shirts
#SBATCH --account=blanca-shirts
#SBATCH --gres=gpu
#SBATCH -t 00:30:00                # 30 minutes walltime for test
#SBATCH --mem=10000mb
#SBATCH --export=ALL
#SBATCH -o run02_test.out
#SBATCH -e run02_test.err

# Load your environment
ml anaconda
source $HOME/.bashrc
conda activate test_evaluator

# Check CUDA availability
echo "Checking CUDA devices..."
nvidia-smi

# Run a test
echo "Starting Python script..."
python run_evaluator_test.py

echo "Test job finished."

