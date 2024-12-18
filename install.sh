sudo apt install nala -y

sudo nala install gnome-tweaks gnome-shell-extension-manager 
sudo nala install flatpak gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo nala install htop neofetch bpytop clang cargo libc6-i386 libc6-x32 libu2f-udev samba-common-bin exfat-fuse default-jdk curl wget unrar linux-headers-$(uname -r) git gstreamer1.0-vaapi unzip ntfs-3g p7zip htop neofetch bpytop git gcc make perl linux-headers-generic

sudo snap install spotify
sudo snap install obsidian --classic
sudo snap install code --classic
sudo snap install gitkraken --classic
sudo snap install insomnia
sudo snap install node --classic
sudo snap install termius-app
sudo snap install ora
sudo snap install slack
sudo snap install vlc