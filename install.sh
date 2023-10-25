#!/bin/bash

# Atualizar o sistema
sudo pacman -Syu

# Importar a chave GPG necessária
gpg --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E

# Criar o diretório de instalação
mkdir -p ~/install
cd ~/install

# Lista de URLs
urls=(
    "firefox-34-bin"
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

# Loop para clonar e instalar os pacotes
for package_name in "${urls[@]}"; do
    # Verificar se o pacote já está instalado
    if pacman -Qs "^$package_name$" > /dev/null; then
        echo "$package_name já está instalado."
    else
        # Clonar o repositório
        git clone "https://aur.archlinux.org/$package_name.git"

        # Entrar na pasta do repositório
        cd "$package_name"

        # Construir e instalar o pacote sem pedir confirmação
        makepkg -si

        # Voltar para o diretório de instalação
        cd ..
        sudo rm -R "$package_name"
    fi
done
