#!/bin/bash
#SBATCH --export=ALL
#SBATCH --output=PEPTIDE_slurm.log
#SBATCH --job-name=PEPTIDE_eq_coarse
module purge
module load ${GROMACS_VERSION}
mpirun -np ${SLURM_NTASKS} gmx_mpi mdrun -ntomp 1 -deffnm PEPTIDE_eq
