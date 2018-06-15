# configure firewall rules
sudo ufw allow ssh
sudo ufw enable
sudo ufw allow 8888
sudo ufw allow from 127.0.0.1 to any port 49152:65535 proto tcp


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

# generate self-signed certificate for public notebook server - interactive
# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem

