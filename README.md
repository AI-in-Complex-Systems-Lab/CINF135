# Jetson Nano Setup

1. Download Jetbot image and install them to SD Cards using Etcher software.
  
2. Username and password will be '**jetbot**'.

3. First time opening up the Jetson, type:
    > sudo systemctl set-default graphical.target       
    > sudo reboot now      

4. Login to Ubunutu and connect to a wifi.

5. Open a terminal and download this github repository:
    > cd Desktop      
    > git clone https://github.com/aicompsyslab/CINF135.git      
    > cd CINF135     

6. Run the setup script (The script will download required libraries, remove unnecessary software and setup the camera):    
    > sudo sh setup.sh

7. Open a web browser and go to 'localhost:8888/lab'

8. Find the CINF135 directory from the left menu.

9. Open setup.ipynb and click run all.
