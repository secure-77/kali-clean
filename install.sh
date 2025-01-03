#!/bin/bash
set -e

cd ~
sudo apt update && sudo apt upgrade -y

sudo apt install -y arandr arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi picom unclutter cargo papirus-icon-theme imagemagick xrdp seclists feroxbuster golang gobuster rlwrap bloodhound.py neo4j bloodhound crowbar ntpdate xxd numlockx


# Install Google Chrome and gowitness (Screenshot Tool)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb
go install github.com/sensepost/gowitness@latest


pipx install pywal
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo python2.7 get-pip.py
pip2.7 install --upgrade setuptools
rm get-pip.py


# install pyftp
sudo pipx install pyftpdlib


mkdir -p ~/.config/i3
mkdir -p ~/.config/picom
mkdir -p ~/.config/rofi
mkdir -p ~/.config/qterminal.org
mkdir -p ~/.wallpaper
cd kali-clean
cp .config/i3/config ~/.config/i3/config
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/picom/picom.conf ~/.config/picom/picom.conf
cp .config/rofi/config ~/.config/rofi/config
cp .fehbg ~/.fehbg
cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
chmod +x ~/.config/i3/clipboard_fix.sh
cp .config/.xsessionrc ~/.xsessionrc
cp .config/qterminal.org/qterminal.ini ~/.config/qterminal.org/qterminal.ini
cp .config/.vimrc ~/.vimrc
cp cyber.jpg ~/.wallpaper
sudo cp .config/reconnectwm.sh /etc/xrdp/reconnectwm.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

