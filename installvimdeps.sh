#!/bin/bash

# Install pathogen
mkdir -p /home/docker/.vim/autoload /home/docker/.vim/bundle 
curl -LSso /home/docker/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install syntastic
mkdir -p /home/docker/.vim/autoload /home/docker/.vim/bundle
curl -LSso /home/docker/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install nerdtree
cd /home/docker/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
