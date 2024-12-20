sudo apt install nala -y

sudo nala install gnome-tweaks gnome-shell-extension-manager  -y
sudo nala install flatpak gnome-software-plugin-flatpak -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo nala install htop neofetch bpytop clang cargo libc6-i386 libc6-x32 libu2f-udev samba-common-bin exfat-fuse default-jdk curl wget unrar linux-headers-$(uname -r) git gstreamer1.0-vaapi unzip ntfs-3g p7zip htop neofetch bpytop git gcc make perl linux-headers-generic -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp ../.zshrc .zshrc_backup
cp .zshrc ../.zshrc

cp ../.gitconfig .gitconfig_backup
cp .gitconfig ../.gitconfig

dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt

rm -rf ~/.local/share/gnome-shell/extensions
cp -r gnome_extensions/ ~/.local/share/gnome-shell/extensions

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

caminho_completo=$(pwd)/wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri "file://$caminho_completo"


git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer

