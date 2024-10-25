
#!/bin/bash

cd ~/

git config --global init.defaultBranch main
git config --global user.name kyn-0s1r15
git config --global user.email mrkynastonblake@gmail.com
git init
git remote add dotfiles git@github.com:kyn-0s1r15/dotfiles.git

rm -r ~/.cache/wal
rm -r ~/.config/hypr
rm -r ~/.config/kitty
rm -r ~/.config/nixos
rm -r ~/.config/powerlevel10k
rm -r ~/.config/rofi
rm -r ~/.config/wal
rm -r ~/.config/waybar
rm ~/.p10k.zsh
rm -r ~/.scripts
rm ~/.zshrc
rm -r ~/DEV
rm ~/LICENSE
rm ~/README.md

git pull dotfiles main
