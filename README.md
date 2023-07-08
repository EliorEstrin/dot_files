# dotfiles

My dotfiles contain various configurations for nvim, zsh, p10k, and alacrity. Please use them with caution and at your own risk.

I use [dotbot](https://github.com/anishathalye/dotbot) To automate the installation of my dotfiles. My dotbot configuration includes the option to replace my config files with the existing files so be extra cautious.

I strongly advise checking the configuration before running it, as your preferences are probably not the same.

Here is the process of configuring a **new** ubuntu system The way I like it:

## Setup

### Single Command Installation
**Note**: Execute with caution. Installation is performed at your own risk.

```
git clone 'https://github.com/PhantomPixelist/dot_files' && \
cd dot_files && \ 
bash fast_install.sh
```
If you get an error simillar to this:

Linking failed ~/.config/nvim -> /home/elior/dot_files/nvim
Some links were not successfully set up

Run This command when you are in the dot_files folder and it should work:
```
bash install
```

Another option to install is by running manually the commands:

### Basic Software Installation
```
sudo apt-get update 
sudo apt install curl -y 
sudo snap install nvim --classic 
sudo apt install tmux -y 
sudo apt install fzf 
sudo add-apt-repository ppa:aslatter/ppa -y 
sudo apt install alacritty -y 
sudo apt install zsh -y 
sudo apt install git -y
```
### OhMyZsh and Powerlevel10k Setup
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
### Neovim Plugin Dependencies
```
sudo apt install build-essential -y 
sudo apt install clang -y
```
### Zsh Custom Plugins
[autojump:](https://github.com/wting/autojump.git)
```
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py
```
On a fresh system that contains only python3, run this command to fix autojump bugs
```
sed -i "s/\#\!\/usr\/bin\/env\ python$/\#\!\/usr\/bin\/env\ python3/" ~/.autojump/bin/autojump
```
### OhMyTmux Installation
install [OhMyTmux](https://github.com/gpakosz/.tmux):
```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

## Dotfile Configuration
This repository contains additional plugins for zsh. Clone the repository and run the installation script:
```
git clone https://github.com/PhantomPixelist/dot_files.git
cd dot_files
cp -r zsh/scripts/zsh-autosuggestions/ ~/.oh-my-zsh/custom/plugins/ && cp -r zsh/scripts/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/
bash install
```
### Setting Up Fonts for Powerlevel10k
In order for Powerlevel10k to work properly, you need to set up the fonts as detailed in this guide.
https://github.com/romkatv/powerlevel10k#fonts


### The end
you should open alacritty terminal and everything should work.
