#!/bin/bash

#SBATCH -A kellogg
#SBATCH -p kellogg
#SBATCH --gres=gpu:a100:1
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 4:00:00
#SBATCH --mem=40G


module purge
module load mamba/23.1.0
source /hpc/software/mamba/23.1.0/etc/profile.d/conda.sh
source activate /kellogg/software/envs/gpu-llama2

date
python /kellogg/data/llm_models_opensource/gemma_google/test_gemma.py
date

