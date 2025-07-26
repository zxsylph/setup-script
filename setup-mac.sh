#!/bin/bash

cd ~/

brew update
brew install pyenv nvm zoxide jenv


git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

mkdir -p ~/.local/share/fonts \
    && cd ~/.local/share/fonts \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Regular.ttf" \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold.ttf" \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Italic.ttf" \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold Italic.ttf"

cd ~

echo "" > .zshrc
echo "" > .p10k.zsh

curl -o .zshrc "https://raw.githubusercontent.com/zxsylph/setup-script/main/temp-zshrc?$(date +%s)"
curl -o .p10k.zsh "https://raw.githubusercontent.com/zxsylph/setup-script/main/temp-p10k-zsh?$(date +%s)"