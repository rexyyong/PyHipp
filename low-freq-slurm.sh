#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
#SBATCH -J "low-freq-slurm"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o low-freq-slurm.%N.%j.out # STDOUT
#SBATCH -e low-freq-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
pyh.FreqSpectrum(saveLevel=1,redoLevel=1);"


aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:927522041319:awsnotify --message "low-freq-slurm"
