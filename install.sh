
#!/bin/bash
cp $HOME/.config/nixos/configuration.nix /etc/nixos/

sleep 1

sudo nixos-rebuild boot
