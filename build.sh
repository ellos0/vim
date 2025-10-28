#!/bin/bash 

echo "This will install vim with some cool stuff!"

# exit on any error
set -e

#install location, can be passed to as an argument
PREFIX=${1:-/usr/local}

# Remove any old versions of Vim
if command -v vim &> /dev/null; then
    echo "Found existing Vim installation. Removing..."
    sudo rm -rf "$PREFIX/bin/vim" "$PREFIX/share/vim" "$PREFIX/lib/vim"
    echo "Old version of Vim removed."
else
    echo "No existing Vim installation found."
fi

git clone https://github.com/vim/vim.git
cd vim
#clone and enter vim repo

# build options
./configure --prefix=$PREFIX --enable-multibyte --with-features=big --enable-python3interp=yes --enable-terminal --enable-gui=none

sudo make
sudo make install

cd ..
sudo rm -rf vim
#remove repo

echo "Vim has been built and installed."
