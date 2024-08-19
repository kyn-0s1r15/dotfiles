
#!/bin/bash
<<<<<<< HEAD
cp -r ~/dotfiles/* ~/

cp $HOME/.config/nixos/configuration.nix /etc/nixos/
=======
sudo cp -r $HOME/dotfiles/* $HOME/ &&

sleep 1

sudo cp $HOME/.config/nixos/configuration.nix /etc/nixos/
>>>>>>> ff2f17a (Add directories from ~/.scripts/git/gitdirs)

sleep 1

sudo nixos-rebuild boot
