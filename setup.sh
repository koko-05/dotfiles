#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

cp .xinitrc ~/
cp -r .vim/ ~/
cp -r .config ~/
cp .bashrc ~/
cp .vimrc ~/

# dev tools
sudo apt-get install -y \
    git \
    gh \
    vim \
    build-essential \
    cmake

# etc tools
sudo apt-get install -y \
    ani-cli \
    network-manager \
    feh \           # img viewer
    imagemagick \   # image tools
    brightnessctl \
    redshift \
    alsa*
    
# graphics related
sudo apt-get install -y \
    mesa-vulkan-drivers \ # just in case...
    xcompmgr # compositor

# common programs
sudo apt-get install -y \
    firefox-esr \   # browser
    thunar \        # file explorer
    font-manager \  # easily manage fonts
    mpv \           # video view
    steam \         # video games
    gparted \       # easy partitioning
    wine            # windows compat
    
# kitty (terminal)
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten /usr/bin/

# setups
mkdir ~/downloads
mkdir ~/documents
mkdir ~/documents/apps/
mkdir ~/documents/apps/java

# window manager (dwm)
cp -r dwm/ ~/documents/apps/
cd ~/documents/apps/dwm
sudo make install

# setup network
echo \
"Setting up network. You might need to restart \
for the network interfaces to work and maybe \
you need to disable more services in systemd.\
\nCheck later. (command is nmtui)"
sleep 7
sudo systemctl start NetworkManager
sudo systemctl enable NetworkManager
sudo systemctl disable ifupdown # i forget if this is the default. check
sudo systemctl stop ifupdown
nmtui # setup network
