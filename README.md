# Install
    
    
    sudo systemctl status sshd
    
    su - ${USER}

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/augustommarques/manjaro/main/install.sh)"

# Repository
    https://aur.archlinux.org/firefox-34-bin.git
    https://aur.archlinux.org/tor-browser-bin.git
    https://aur.archlinux.org/dbeaver-git.git
    https://aur.archlinux.org/evolution-git.git
    https://aur.archlinux.org/visual-studio-code-bin.git
    
    https://aur.archlinux.org/vlc-git.git
    https://aur.archlinux.org/okular-git.git
    https://aur.archlinux.org/google-chrome.git
    https://aur.archlinux.org/sublime-text-4.git
    https://aur.archlinux.org/insomnia-bin.git
    https://aur.archlinux.org/wine-git.git
    https://aur.archlinux.org/packages/wine-git

# Docker
    sudo usermod -aG docker ${USER}
    sudo systemctl status docker
    sudo systemctl enable docker.service
    sudo systemctl start docker.service
    sudo pamac install docker