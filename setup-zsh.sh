#!/bin/sh

sudo apt update

sudo apt install zsh -y

chsh -s $(which zsh)

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash


