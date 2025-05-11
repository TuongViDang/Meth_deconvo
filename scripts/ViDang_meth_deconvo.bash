#Download all files in to ~/Interview_VIB/VIB and go to this directory
cd ~/Interview_VIB/VIB

#Create conda environment using the yaml file and activate this environment
conda env create -f env.yaml
conda activate meth_env

#Create scripts folder and move the deconvolve.py into this folder
mkdir scripts 
mv deconvolve.py scripts
mv env.yaml scripts

#Create results folder for output
mkdir results

#run deconvolution
python3 scripts/deconvolve.py -a reference_samples.csv bulk_samples.csv --out_dir results