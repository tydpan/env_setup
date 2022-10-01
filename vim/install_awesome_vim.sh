#!/bin/bash

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
cp my_configs.vim ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh