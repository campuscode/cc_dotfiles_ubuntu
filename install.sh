#!/bin/sh

export TERMINAL=gnome-terminal
IMAGE_PATH=rebase_wallpaper.jpg

curl -O https://raw.githubusercontent.com/campuscode/cc_dotfiles/master/install.sh
chmod +x install.sh
./install.sh

wget -O ~/$IMAGE_PATH https://rebase-test.s3.amazonaws.com/wallpapers/Wallpaper+Rebase+com+LogoB.jpg
gsettings set org.gnome.desktop.background picture-uri file:////home/$(whoami)/$IMAGE_PATH
