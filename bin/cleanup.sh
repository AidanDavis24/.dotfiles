#/bin/bash
rm -f "$HOME/.nanorc"
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc
rm -rf "$HOME/.TRASH"

