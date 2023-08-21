#!/bin/bash

cd ~
sudo apt update && sudo apt upgrade -y

#sudo apt-get install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt install -y arandr arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo papirus-icon-theme imagemagick xrdp seclists feroxbuster golang gobuster rlwrap bloodhound.py neo4j bloodhound crowbar ntpdate xxd
# sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
# sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 

#mkdir -p ~/.local/share/fonts/

#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip

#unzip Iosevka.zip -d ~/.local/share/fonts/
#unzip RobotoMono.zip -d ~/.local/share/fonts/

#fc-cache -fv


# Install Google Chrome and gowitness (Screenshot Tool)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb
go install github.com/sensepost/gowitness@latest



#git clone https://www.github.com/Airblader/i3 i3-gaps
# cd i3-gaps && mkdir -p build && cd build && meson ..
# ninja
# sudo ninja install
# cd ../..

pip3 install pywal
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo python2.7 get-pip.py
pip2.7 install --upgrade setuptools
rm get-pip.py

# make sure that pip 3 is the main pip
sudo mv /usr/local/bin/pip /usr/local/bin/pip2_renamed
sudo cp /usr/bin/pip3.11 /usr/local/bin/pip
sudo cp /usr/bin/pip3.11 /usr/bin/pip

# install pyftp
sudo pip install pyftpdlib


mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/qterminal.org
mkdir -p ~/.wallpaper
cd kali-clean
cp .config/i3/config ~/.config/i3/config
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/compton/compton.conf ~/.config/compton/compton.conf
cp .config/rofi/config ~/.config/rofi/config
cp .fehbg ~/.fehbg
cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
chmod +x ~/.config/i3/clipboard_fix.sh
cp .config/.xsessionrc ~/.xsessionrc
cp .config/qterminal.org/qterminal.ini ~/.config/qterminal.org/qterminal.ini 


echo "Done! Grab some wallpaper and run pywal -i filename to set your color scheme. To have the wallpaper set on every boot edit ~.fehbg"
echo "After reboot: Select i3 on login, run lxappearance and select arc-dark"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .config/.zshrc ~/.zshrc

cd ~
# add go to our path var
echo "alias ll='ls -lah'" >> .zshrc
echo "# Golang paths in bashrc" >> .zshrc
echo "export GOROOT=/usr/local/go" >> .zshrc
echo "export GOPATH=$HOME/go" >> .zshrc
echo "export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH" >> .zshrc
source .zshrc 


# only if we need rdp activ
sudo systemctl enable xrdp
sudo systemctl start xrdp
