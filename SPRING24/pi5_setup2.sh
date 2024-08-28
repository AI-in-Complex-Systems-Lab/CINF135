pip3 install torch torchvision torchaudio --break-system-packages
pip3 install jupyter jupyterlab ipykernel --break-system-packages

cd /home/pi/Desktop
git clone https://github.com/AI-in-Complex-Systems-Lab/CINF135.git


sudo nano /lib/systemd/system/jupyter.service
jupyter lab --allow-root -port=8888 --no-browser --NotebookApp.token='' --NotebookApp.allow_origin='*' --notebook-dir=/home/pi/Desktop/CINF135
