#!/bin/sh

mkdir -p ~/.local/share/icons && cp -r ./gtk-themes-icons/oreo_spark_pink_cursors ~/.local/share/icons/
cp -r ./gtk-themes-icons/candy-icons ~/.local/share/icons/
mkdir -p ~/.local/share/themes && cp -r ./gtk-themes-icons/Sweet-Dark-v40 ~/.local/share/themes/
mkdir -p ~/.icons/default && cp ./gtk-themes-icons/index.theme ~/.icons/default/
mkdir -p ~/.config/xsettingsd && cp ./gtk-themes-icons/xsettingsd.conf ~/.config/xsettingsd/
cp ./gtk-themes-icons/.gtkrc-2.0 ~/.gtkrc-2.0

cp -r fish ~/.config/
cp -r gtk-2.0 ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r dunst ~/.config/
cp -r hypr ~/.config/
cp -r kitty ~/.config/
cp -r nwg-look ~/.config/
cp -r rofi ~/.config/
cp -r starship ~/.config/
cp -r waybar ~/.config/
cp -r Wallpapers ~/.config/
cp -r .git ~/.config/

gsettings set org.gnome.desktop.wm.preferences theme "Sweet"
gsettings set org.gnome.desktop.interface gtk-theme "Sweet"
gsettings set org.gnome.desktop.interface cursor-theme 'Oreo Spark Pink'
gsettings set org.gnome.desktop.interface icon-theme "candy-icons"

nwg-look -a
chsh -s /bin/fish
