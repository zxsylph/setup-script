#!/bin/bash

#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#go to home directory
cd ~/

#update brew and install tools
brew update
brew install neovim nvm zoxide jenv pyenv pyenv-virtualenv

#install oh my zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

#install omz plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#install omz themes
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#download fonts
mkdir -p ~/.local/share/fonts \
    && cd ~/.local/share/fonts \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Regular.ttf" \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold.ttf" \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Italic.ttf" \
    && curl -fLO "https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold Italic.ttf"

#go to home directory
cd ~

#create empty config files
echo "" > .zshrc
echo "" > .p10k.zsh

#copy config file from git
curl -o .zshrc "https://raw.githubusercontent.com/zxsylph/setup-script/main/temp-zshrc?$(date +%s)"
curl -o .p10k.zsh "https://raw.githubusercontent.com/zxsylph/setup-script/main/temp-p10k-zsh?$(date +%s)"