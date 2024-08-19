
#!/bin/bash
sudo cp -r $HOME/dotfiles/* $HOME/ &&

sleep 1

sudo cp $HOME/.config/nixos/configuration.nix /etc/nixos/

sleep 1

sudo nixos-rebuild boot
