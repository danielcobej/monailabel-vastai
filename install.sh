#!/bin/bash

apt update
apt install -y python3 python3-pip python3-dev python3-venv htop iftop mc wget unzip
mkdir monailabel
cd monailabel
pip install monailabel
pip install dicomweb-client[gcp]
wget http://128.140.41.93:8888/amos.zip
unzip amos.zip

monailabel start_server --app radiology --studies amos --conf models segmentation
