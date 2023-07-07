# dotfiles

My dotfiles contain various configurations for nvim, zsh, p10k, and alacrity. Please use them with caution and at your own risk.

I use [dotbot](https://github.com/anishathalye/dotbot) To automate the installation of my dotfiles.

I strongly advise checking the configuration before running it, as your preferences are probably not the same.

Here is the process of configuring a **new** ubuntu system The way I like it:
# Setup
Get basic software:
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
Install OhMyZsh And power 10k to set up prompt
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Install dependencies for certain plugins in neovim
```
sudo apt install build-essential -y 
sudo apt install clang -y
```
## zsh custom plugins
[autojump:](https://github.com/wting/autojump.git)
```
cd - 
git clone https://github.com/wting/autojump.git
cd autojump
python3 ./install.py
```
On a fresh system that contains only python3 run this command to fix auto jump bugs
```
sed -i "s/\#\!\/usr\/bin\/env\ python$/\#\!\/usr\/bin\/env\ python3/" ~/.autojump/bin/autojump
```
install OhMyTmux:
```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

## dotfile configuration
I have in this repo more plugins for zsh
```
git clone https://github.com/PhantomPixelist/dot_files.git 
cd dotfiles
cp -r zsh/scripts/zsh-autosuggestions/ ~/.oh-my-zsh/custom/plugins/ && cp -r zsh/scripts/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/
bash install
```

Setup Fonts for power10k To work properly:
https://github.com/romkatv/powerlevel10k#fonts

