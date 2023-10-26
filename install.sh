#!/bin/bash

sudo pacman -Syu


mkdir -p ~/install
cd ~/install

gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

urls=(
    "firefox-bin"
    "tor-browser-bin"
    "dbeaver-git"
    "evolution-git"
    "visual-studio-code-bin"
    "vlc-git"
    "okular-git"
    "google-chrome"
    "sublime-text-4"
    "insomnia-bin"
    "wine-git"
)

for package_name in "${urls[@]}"; do
    if pacman -Qs "^$package_name$" > /dev/null; then
        echo "$package_name já está instalado."
    else

        dependencies=$(yay -Si "$package_name" --printformat "%D" | grep -oP '^\S+')
        
        sudo pacman -S --noconfirm $dependencies

        git clone "https://aur.archlinux.org/$package_name.git"

        cd "$package_name"

        makepkg -si

        cd ..
        sudo rm -R "$package_name"
    fi
done