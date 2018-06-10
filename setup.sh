# create swapfile
sudo dd if=/dev/zero of=swapfile bs=1M count=1500
sudo mkswap swapfile
sudo swapon swapfile

# MISSING: Install Anaconda

# update Anaconda
conda update -n base conda

# install xgboost for Anaconda
 conda install -c conda-forge xgboost

# install R and r-essentials for Anaconda
conda install -c r r-essentials
