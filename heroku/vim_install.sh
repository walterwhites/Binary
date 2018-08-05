#!/usr/bin/env bash

# Create vim directory in your bin folder in your heroku container (linux container)
cd app/
mkdir bin/
cd bin/
mkdir vim
cd vim

# Download vim
curl 'https://s3.amazonaws.com/bengoa/vim-static.tar.gz' | tar -xz

# Export

export VIMRUNTIME="$HOME/bin/vim/runtime"
export PATH="$HOME/bin/vim:$PATH"
cd -
