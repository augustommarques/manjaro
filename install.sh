#bin/bash

sudo pacman -Syu

gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

mkdir ~/install 
git clone https://aur.archlinux.org/dropbox.git

cd dropbox
makepkg -si --noconfirm