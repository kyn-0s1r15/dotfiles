
#!/bin/bash

# Path to the file containing the list of directories
GITDIRS_FILE="$HOME/.scripts/git/gitdirs"

# Remote repository URL
REMOTE_REPO="git@github.com:kyn-0s1r15/dotfiles.git"

cp /etc/nixos/configuration.nix $HOME/.config/nixos/configuration.nix

# Read directories from the file and add them to the repository
while IFS= read -r dir; do
  # Skip lines that are empty or start with a comment
  [[ -z "$dir" || "$dir" =~ ^# ]] && continue
  
  # Expand the path
  expanded_dir=$(eval echo "$dir")
  
  # Add the directory to the repository
  git add "$expanded_dir"
done < "$GITDIRS_FILE"

# Commit the changes
git commit -m "Add directories from ~/.scripts/git/gitdirs"

# Push the changes to the remote repository
git push dotfiles main
