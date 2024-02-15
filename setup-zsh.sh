#!/bin/sh

sudo apt update

sudo apt install zsh -y

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

chsh -s $(which zsh)