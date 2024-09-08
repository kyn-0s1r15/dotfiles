
#!/bin/bash

cd ~/

git config --global init.defaultBranch <branch>
git config --global user.name <name>
git config --global user.email <email>
git init
git remote add <repo-name> <ssh-link>

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

git pull <repo-name> <branch>
