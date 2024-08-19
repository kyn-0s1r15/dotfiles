
#!/bin/bash
cp -r $HOME/LICENSE
cp -r $HOME/README.md
cp -r $HOME/install.sh
cp -r $HOME/.config/gtk-3.0
cp -r $HOME/.config/hypr
cp -r $HOME/.config/kitty
cp -r $HOME/.config/powerlevel10k
cp -r $HOME/.config/rofi
cp -r $HOME/.config/wal
cp -r $HOME/.config/waybar
cp -r $HOME/.icons
cp -r $HOME/.local/share/applications
cp -r $HOME/.oh-my-zsh
cp -r $HOME/.scripts
cp -r $HOME/DEV
cp -r $HOME/.p10k.zsh
cp -r $HOME/.zshrc
cp -r $HOME/.config/nixos/configuration.nix

sleep 1

sudo cp $HOME/.config/nixos/configuration.nix /etc/nixos/

sleep 1

sudo nixos-rebuild boot
