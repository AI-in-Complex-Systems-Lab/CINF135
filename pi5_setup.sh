sudo apt-get update

sudo apt-get install -y python3-pip python3-matplotlib python3-numpy python3-scipy python3-pandas python3-seaborn python3-opencv python3-sklearn

sudo apt-get clean

pip3 install --upgrade pip --break-system-packages

pip3 install torch torchvision torchaudio --break-system-packages
pip3 install jupyter jupyterlab ipykernel --break-system-packages

sudo git config --global pull.rebase true
sudo git config --global --add safe.directory '*'
# cd /home/pi/Desktop/CINF135; git reset --hard HEAD; git pull

RC_LOCAL_PATH="/etc/rc.local"

sudo touch "$RC_LOCAL_PATH"
sudo chmod +x "$RC_LOCAL_PATH"
sudo cat <<EOT > "$RC_LOCAL_PATH"
#!/bin/sh -e
sleep 2
exec > /tmp/rc.local.out 2>&1; set -x
jupyter lab --allow-root --port=8888 --no-browser --ServerApp.token='' --ServerApp.allow_origin='*' --notebook-dir=/home/pi/Desktop --Application.log_level=40 &
export PATH=/home/pi/.local/bin:$PATH
exit 0
EOT


CONFIG_FILE="/boot/firmware/config.txt"

sed -i 's/camera_auto_detect=1/camera_auto_detect=0/' "$CONFIG_FILE"
sed -i '/\[all\]/a dtoverlay=imx219' "$CONFIG_FILE"

sleep 3
sudo reboot now