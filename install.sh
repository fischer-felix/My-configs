#!/bin/bash

#install on debian based distros
sudo apt-get install zsh zsh-syntax-highlighting zsh-autosuggestions autojump terminator

#install on arch based distros
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions terminator
pamac install autojump

mv zshrc ~/.zshrc

touch "$HOME/.cache/zshhistory"

#install needed fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

mkdir ~/.local/share/fonts

mv MesloLGS\ NF\ Bold\ Italic.ttf ~/.local/share/fonts/
mv MesloLGS\ NF\ Bold.ttf ~/.local/share/fonts/
mv MesloLGS\ NF\ Italic.ttf ~/.local/share/fonts/
mv MesloLGS\ NF\ Regular.ttf ~/.local/share/fonts/

fc-cache -f -v

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
touch .hidden
echo powerlevel10k >> .hidden

chsh $USER
