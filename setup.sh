
# configure firewall rules
# don't forget to configure corresponding EC2 security group rules!
sudo ufw allow ssh
sudo ufw enable
sudo ufw allow 8888
sudo ufw allow from 127.0.0.1 to any port 49152:65535 proto tcp


# create swapfile
sudo dd if=/dev/zero of=swapfile bs=1M count=1500
sudo mkswap swapfile
sudo swapon swapfile

# MISSING: Install git, screen, (vi?)

# MISSING: Install Anaconda, jupyter

# MISSING: pull config files, anything else needed for setup

# update Anaconda
conda update -n base conda

# install numpy, scipy, sklearn, xgboost for Anaconda
conda install -c anaconda numpy
conda install -c anaconda scipy
conda install -c anaconda scikit-learn
conda install -c conda-forge xgboost
conda install -c conda-forge eli5

# install R and r-essentials for Anaconda
conda install -c r r-essentials

# if multiple environments are needed, see:
# http://ipython.readthedocs.io/en/stable/install/kernel_install.html#kernels-for-different-environments
# conda create --name oldxgb
# source activate oldxgb
# conda install -n oldxgb -c conda-forge xgboost=0.6a2
# conda install pip
# conda install ipykernel
# python -m ipykernel install --user --name oldxgb --display-name "Python (oldxgb)"


# generate self-signed certificate for public notebook server - interactive
# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem
