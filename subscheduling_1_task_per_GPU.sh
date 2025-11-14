#!/bin/bash -l
#SBATCH --job-name=subsched_example
#SBATCH --ntasks=4
#SBATCH --ntasks-per-node=4
#SBATCH --output=%x%j.out
#SBATCH --error=%x%j.err
#SBATCH --time=00:15:00
#SBATCH -p gpu
#SBATCH -q default
#SBATCH -A lxp
#SBATCH --gres=gpu:4

module load Python
module load PyTorch

for i in {0..3}
do
    CUDA_VISIBLE_DEVICES=$i
    srun --exact --export=ALL,CUDA_VISIBLE_DEVICES --gres=gpu:1 --ntasks=1 env  python3 matrix_mul_on_GPU.py  &
done

wait
