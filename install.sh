#!/bin/bash

apt update
apt install -y python3 python3-pip python3-dev python3-venv htop iftop mc wget
mkdir monailabel
cd monailabel
python3 -m venv .venv
source .venv/bin/activate
pip install monailabel

