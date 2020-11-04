#!/bin/bash

#install on debian based distros
sudo apt-get install zsh zsh-syntax-highlighting zsh-autosuggestions

#install on arch based distros
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions
pamac install autojump

mv zshrc ~/.zshrc

touch "$HOME/.cache/zshhistory"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
echo powerlevel10k >> .hidden

chsh $USER
