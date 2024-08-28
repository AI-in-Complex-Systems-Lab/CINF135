sudo su -
apt-get update
apt-get install -y python3-pip
apt-get install -y python3-matplotlib
apt-get install -y python3-numpy
apt-get install -y python3-scipy
apt-get install -y python3-pandas
apt-get install -y python3-seaborn
apt-get install -y python3-opencv
apt-get install -y python3-sklearn
apt-get clean

export PATH=/home/pi/.local/bin:$PATH 

pip3 install --upgrade pip --break-system-packages
sudo reboot now