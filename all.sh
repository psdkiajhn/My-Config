#! /usr/bin/sh

sudo pacman -Syu python3 thefuck zoxide zsh lsd git tor torsocks bat ttf-cascadia-code-nerd flatpak unzip unrar chafa imagemagick neovim npm
mkdir ~/gits
cd ~/gits
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si
cp .zshrc ~/
mkdir ~/.pt
cp bast.toml ~/.pt/
yay -S oh-my-posh
sudo systemctl start tor
sudo systemctl enable tor
chsh -s /bin/zsh
flatpak install flathub org.videolan.VLC
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.opera.opera
flatpak install flathub app.opencomic.opencomic
flatpak install flathub de.haeckerfelix.Shortwave
flatpak install flathub org.gnome.Calculator
flatpak install flathub org.gnome.eog
flatpak install flathub org.localsend.localsend_app
mkdir ~/.config/neofetch
cp neofetch-config.conf ~/.config/neofetch/config.conf
cp 3.jpg ~/.config/neofetch/3.jpg
unzip nvim.zip
cp -r nvim ~/.config/
