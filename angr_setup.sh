#!/bin/bash

echo "Download the Anaconda first..."
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh -o /tmp/anaconda.sh
chomd +x /tmp/anaconda.sh
echo "Please follow the instructions to finish anaconda installation..."
/tmp/anaconda.sh

# Create the basic environment (python3)
source ~/.bashrc
conda create --name jupyter
jupyter-lab --generate-config

# Then need to edit the settings
# c.NotebookApp.password = 'sha1:2c19869008a9:e2cd580f31679446fdced1ce37839da4dc8e7828'
# Remember to change the listen port, ip_addr, and the document root for jupyter-lab
vim ~/.jupyter/jupyter_notebook_config #TBD

# Create python2 kernel
conda create -n py27 python=2.7 ipykernel
source activate py27
ipython kernel install --user --name=angr

pip install angr

cd /tmp
git clone https://github.com/axt/angr-utils
cd angr-utils
python setup.py build
python setup.py install

git clone https://github.com/axt/bingraphvis
cd bingraphvis
python setup.py build
python setup.py install

pip install graphviz
pip install pydot

git clone https://github.com/angr/simuvex
cd simuvex
python setup.sh build
python setup.sh install

# Then we could start the jupyter-lab in the background
source activate jupyter
nohup jupyter-lab &
