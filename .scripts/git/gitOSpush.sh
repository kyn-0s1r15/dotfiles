
#!/bin/bash

# Path to the file containing the list of directories
GITDIRS_FILE="$HOME/.scripts/git/gitdirs"

# Remote repository URL
REMOTE_REPO="git@github.com:kyn-0s1r15/dotfiles.git"

# Include external files
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

# Commit changes for each file individually with a prompt for a message
for file in $(git diff --cached --name-only); do
  # Prompt for a commit message using the floating window script
  commit_message=$("$HOME/.scripts/kitty/kiity-prompt-float.sh" --message "Enter commit message for $file:")

  # Check if commit_message is empty and skip the commit if it is
  if [[ -z "$commit_message" ]]; then
    echo "No commit message provided for $file. Skipping..."
    continue
  fi

  # Commit the file with the provided message
  git commit -m "$commit_message" -- "$file"
done

# Push the changes to the remote repository
git push dotfiles main
