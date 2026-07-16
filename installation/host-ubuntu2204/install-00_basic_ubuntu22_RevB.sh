# to install the basic apps for ubuntu 22.04
# H.Zhang, Gunma University, Japan
# RevB:2026-07-15

# Set the address bar from botton into text
gsettings set org.gnome.nautilus.preferences always-use-location-entry true

# update and upgrade
sudo apt-get update
sudo apt-get dist-upgrade --fix-missing -y


# install build essential
sudo apt-get install build-essential -y

# install python3 python3-venv and visual studio code
sudo apt install python3-venv -y

# install grub
sudo apt-get install grub2 -y
sudo update-grub

# Setting tool
sudo apt-get install unity-tweak-tool gnome-tweak-tool compizconfig-settings-manager dconf-editor -y

# exfat (format usb memory)
sudo apt-get install exfat-fuse exfat-utils -y

# Samba
sudo apt-get install samba -y

# Git
sudo apt-get install git -y

# Gnuplot
sudo apt-get install gnuplot-nox gnuplot-qt gnuplot-x11 -y

# Meld
sudo apt-get install meld -y

# ibus MOZC for using japanese
sudo apt-get install ibus-mozc -y
sudo killall ibus-daemon
sudo ibus-daemon -d -x &

# Terminator
sudo apt-get install terminator -y

# net tool
sudo apt install net-tools -y

# SSH
sudo apt-get install openssh-server -y
sudo ufw allow 22
sudo /etc/init.d/ssh restart
sudo systemctl enable ssh

# Kazam
sudo apt-get install kazam -y

# screen
sudo apt-get install screen -y # to seperate screen

# hardware information
sudo apt-get install hardinfo -y

# vim
sudo apt-get install vim -y

# gnome-system-tools to control use and group
sudo apt install gnome-system-tools -y

# screenfetch
sudo apt-get install screenfetch -y

# python3-pip
sudo apt-get install python3-pip -y
