#!/bin/bash

#SBATCH --job-name=boot_all
#SBATCH --error=/oak/stanford/groups/omramom/group_members/ecj/landslide_felm_PRISM/felm_01d/pacificCoast_states/main/felm_boot_%a.err
#SBATCH --output=/oak/stanford/groups/omramom/group_members/ecj/landslide_felm_PRISM/felm_01d/pacificCoast_states/main/felm_boot_%a.out
#SBATCH --array=1-200%5
#SBATCH --time=2:00:00
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=150GB
#SBATCH --mail-type=END,FAIL 
#SBATCH --mail-user=ecj@stanford.edu
#SBATCH -p diffenbaugh

module load R
ml load physics geos
ml load physics gdal
ml load physics proj 
ml load udunits

cd /oak/stanford/groups/omramom/group_members/ecj/landslide_felm_PRISM/felm_01d/pacificCoast_states/main/
## arguements for bootstrapping are: ARRAY_ID NBOOT modname modform datafile cluster_varname
Rscript ./bootstrap-models.R $SLURM_ARRAY_TASK_ID 5 felm "landslideDensity ~ rainfall_1d:urbanArea_type | year + ID" "./dataframe_01d.rds" ID 
