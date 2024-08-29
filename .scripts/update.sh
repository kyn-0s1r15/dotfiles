
#!/bin/bash

git clone https://github.com/kyn-0s1r15/dotfiles.git

sleep 1

 cp -r $HOME/dotfiles/LICENSE $HOME/
 cp -r $HOME/dotfiles/README.md $HOME/
 cp -r $HOME/dotfiles/install.sh $HOME/
 cp -r $HOME/dotfiles/.config $HOME/
 cp -r $HOME/dotfiles/.cache $HOME/
 cp -r $HOME/dotfiles/.icons $HOME/
 cp -r $HOME/dotfiles/.local $HOME/
 cp -r $HOME/dotfiles/.oh-my-zsh $HOME/
 cp -r $HOME/dotfiles/.scripts $HOME/
 cp -r $HOME/dotfiles/DEV $HOME/
 cp -r $HOME/dotfiles/.p10k.zsh $HOME/
 cp -r $HOME/dotfiles/.zshrc $HOME/
 cp -r $HOME/dotfiles/.config/nixos/configuration.nix $HOME/

sleep 1

 sudo cp $HOME/dotfiles/.config/nixos/configuration.nix /etc/nixos/

sleep 1

 sudo nixos-rebuild boot --upgrade

sleep 1

 echo "time to reboot :)"
