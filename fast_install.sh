#!/bin/bash

function install_basic_software(){
	sudo apt-get update 
	sudo apt install curl -y 
	sudo snap install nvim --classic 
	sudo apt install tmux -y 
	sudo apt install fzf -y 
	sudo add-apt-repository ppa:aslatter/ppa -y 
	sudo apt install alacritty -y 
	sudo apt install zsh -y 
}

function setup_ohmyzsh_and_powerlevel10k() {
	export RUNZSH=no
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

function install_nvim_plugin_dependencies(){
	sudo apt install build-essential -y 
	sudo apt install clang -y
}

function install_zsh_custom_plugins(){
	git clone https://github.com/wting/autojump.git
	pushd autojump
	python3 ./install.py
	# Fix autojump bug
	sed -i "s/\#\!\/usr\/bin\/env\ python$/\#\!\/usr\/bin\/env\ python3/" ~/.autojump/bin/autojump
		popd
}

function install_oh_my_tmux(){
	pushd ~
	git clone https://github.com/gpakosz/.tmux.git
	ln -s -f .tmux/.tmux.conf
	cp .tmux/.tmux.conf.local .
	popd
}

function configure_dot_files(){
	cp -r zsh/scripts/zsh-autosuggestions/ ~/.oh-my-zsh/custom/plugins/ && cp -r zsh/scripts/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/
	bash install
}

function main(){
	install_basic_software
	setup_ohmyzsh_and_powerlevel10k
	install_nvim_plugin_dependencies
	install_zsh_custom_plugins
	install_oh_my_tmux
	configure_dot_files
}

main
