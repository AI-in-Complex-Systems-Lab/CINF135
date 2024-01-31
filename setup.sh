#!/bin/bash

# Clean space
sudo apt update
sudo apt autoremove -y
sudo apt clean
sudo apt remove thunderbird libreoffice-* -y

sudo rm -rf /usr/local/cuda/samples \
/usr/src/cudnn_samples_* \
/usr/src/tensorrt/data \
/usr/src/tensorrt/samples \
/usr/share/visionworks* ~/VisionWorks-SFM*Samples \
/opt/nvidia/deepstream/deepstream*/samples

sudo apt purge cuda-repo-l4t-local libvisionworks-repo -y
sudo rm /etc/apt/sources.list.d/cuda*local /etc/apt/sources.list.d/visionworks*repo*
sudo rm -rf /usr/src/linux-headers-*

sudo rm -rf /usr/local/cuda/targets/aarch64-linux/lib/.a \
/usr/lib/aarch64-linux-gnu/libcudnn.a \
/usr/lib/aarch64-linux-gnu/libnvcaffe_parser*.a \
/usr/lib/aarch64-linux-gnu/libnvinfer*.a \
/usr/lib/aarch64-linux-gnu/libnvonnxparser*.a \
/usr/lib/aarch64-linux-gnu/libnvparsers*.a

# Setup camera
cd ~
wget https://files.waveshare.com/upload/e/eb/Camera_overrides.tar.gz
tar zxvf Camera_overrides.tar.gz 
rm Camera_overrides.tar.gz
sudo cp camera_overrides.isp /var/nvidia/nvcam/settings/
sudo chmod 664 /var/nvidia/nvcam/settings/camera_overrides.isp
sudo chown root:root /var/nvidia/nvcam/settings/camera_overrides.isp

# Install dependencies
pip3 install numpy pandas