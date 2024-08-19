pip3 install torch torchvision torchaudio --break-system-packages
pip3 install jupyter jupyterlab ipykernel --break-system-packages

RC_LOCAL_PATH="/etc/rc.local"

sudo touch "$RC_LOCAL_PATH"
sudo chmod +x "$RC_LOCAL_PATH"
sudo cat <<EOT > "$RC_LOCAL_PATH"
#!/bin/sh -e
sleep 10
cd /home/pi/Desktop/CINF135; git config --global pull.rebase true; git reset --hard HEAD; git pull
jupyter lab --allow-root -port=8888 --no-browser --NotebookApp.token='' --NotebookApp.allow_origin='*' --notebook-dir=/home/pi/Desktop/CINF135 --Application.log_level=40 &
exit 0
EOT

sudo reboot now