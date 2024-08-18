
#!/bin/bash

NIX_FILE=".0s1r15/settings.nix"

# Extract variables from the Nix file
UserName=$(nix eval --raw -f $NIX_FILE UserName)
WallpaperDir=$(nix eval --raw -f $NIX_FILE WallpaperDir)
NixDir=$(nix eval --raw -f $NIX_FILE NixDir)

        cd /
        sudo mkdir /.git
        sudo chown ${UserName}:users /.git
        git init
        git remote add nixos-0s1r15 git@github.com:kyn-0s1r15/nixos-0s1r15.git
        git add /home/${UserName}/.0s1r15
        read -p "Enter the commit message: " commitMessage
        git commit -m "${commitMessage}"
        git push nixos-0s1r15 main
