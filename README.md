# Kali-Clean

My kali i3 desktop setup. Some people have been asking so I wrote a quick installer to get going. 

After cloning the repo just run ./install.sh . This installs a lot of stuff, including all nerd-fonts, so it will take a while (about 20 minutes last time I checked). Feel free to optimize ;)

## Installation

```
./install.sh
```

After the script is done reboot and select i3 (top right corner) on the login screen. Then open a terminal (`ctrl+return`) run `lxappearance`and select ark-dark theme and change the icons to whatever you like (I used papyrus).


## Ubuntu Setup

If you run this on a ubuntu you need to do some additional steps

```
# Install awesome fonts
sudo apt install fonts-font-awesome

# Install latest i3 
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb keyring.deb
sudo apt install ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
sudo apt dist-upgrade -y
```
