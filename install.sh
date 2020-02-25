#!/usr/bin/env bash

#set -x

echo "###########################################"
echo "++ Updating Packages++"
echo "###########################################"
sudo apt update && sudo apt full-upgrade

echo "###########################################"
echo "++ Installing system dependencies ++"
echo "###########################################"
sudo apt install zsh autojump pandoc texlive ruby-full build-essential zlib1g-dev

echo "###########################################"
echo "++ Installing Jekyll Bundler ++"
echo "###########################################"
gem install jekyll bundler

echo "###########################################"
echo "++ Cloning Dotfiles ++"
echo "###########################################"
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo ".dotfiles.git" >> .gitignore
git clone --bare https://www.github.com/thenerdlawyer/dotfiles.git $HOME/.dotfiles.git
dotfiles checkout
	rm .zshrc
dotfiles config --local status.showUntrackedFiles no

echo "###########################################"
echo "++ Bringing in Submodules ++"
echo "###########################################"
dotfiles submodule init
dotfiles submodule update

echo "###########################################"
echo "++ Installing Powerlevel10k ++"
echo "###########################################"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo "###############################################"
echo "++ Done... run /bin/zsh ++"
echo "###############################################"



