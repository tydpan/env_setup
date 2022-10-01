#!/bin/bash

NAME=py3.8
conda create -y --name ${NAME} python==3.8
ENV_PATH="$(which conda)"
ENV_PATH="$(dirname "$(dirname "$ENV_PATH")")"/envs/$NAME
if [ -d "$ENV_PATH" ]; then
    eval "$(conda shell.bash hook)"
    conda activate $NAME
    which pip
    which python
else
    echo "$ENV_PATH doesn't exist"
    exit 2
fi

BGreen="\033[1;32m"
NC="\033[0m"
echo

# Pytorch
# echo -e "${BGreen}Installing torch torchvision 11.3${NC}"
# conda install pytorch torchvision torchaudio cudatoolkit=10.2 -c pytorch
# echo -e "${BGreen}Installing torch torchvision 11.3${NC}"
# conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
# echo

# Detectron2, including pycocotools
# echo -e "${BGreen}Installing Detectron2${NC}"
# python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
# echo

# LVIS API, including OpenCV
# echo -e "${BGreen}Installing LVIS API${NC}"
# pip install lvis
# echo

# Misc
echo -e "${BGreen}Installing others${NC}"
pip install pycocotools tqdm pandas scikit-learn scikit-image scipy opencv-python-headless
pip install flake8 black flake8-black
pip install jupyterlab ipywidgets ipykernel ptpython

jupyter nbextension enable --py widgetsnbextension
ipython kernel install --user --name=$NAME