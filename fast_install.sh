#!/bin/bash

# Basic Software Installation
sudo apt-get update 
sudo apt install curl -y 
sudo snap install nvim --classic 
sudo apt install tmux -y 
sudo apt install fzf -y 
sudo add-apt-repository ppa:aslatter/ppa -y 
sudo apt install alacritty -y 
sudo apt install zsh -y 

# OhMyZsh and Powerlevel10k Setup
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Neovim Plugin Dependencies
sudo apt install build-essential -y 
sudo apt install clang -y

# Zsh Custom Plugins
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py
# Fix autojump bug
sed -i "s/\#\!\/usr\/bin\/env\ python$/\#\!\/usr\/bin\/env\ python3/" ~/.autojump/bin/autojump

# OhMyTmux Installation
pushd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
popd

# Dotfile Configuration
cp -r zsh/scripts/zsh-autosuggestions/ ~/.oh-my-zsh/custom/plugins/ && cp -r zsh/scripts/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/
bash install
