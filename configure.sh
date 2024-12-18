
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp ../.zshrc .zshrc_backup
cp .zshrc ../.zshrc

dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt
cp -r gnome_extensions/ ~/.local/share/gnome-shell/quicklaunch

caminho_completo=$(pwd)/wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri "file://$caminho_completo"
