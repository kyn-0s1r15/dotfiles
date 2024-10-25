
#!/bin/bash

# $HOME = ../

# Path to the file *gitdirs* containing the list of directories
GITDIRS_FILE="C:\gittemplate\gitdirs"

# Remote repository URL
REMOTE_REPO="git@github.com:username/repo.git"

# Include external files
cp \etc\extra.file C:\gitdir\extra.file

# Read directories from the file and add them to the repository
while IFS= read -r dir; do
  # Skip lines that are empty or start with a comment
  [[ -z "$dir" || "$dir" =~ ^# ]] && continue
  
  # Expand the path
  expanded_dir=$(eval echo "$dir")
  
  # Add the directory to the repository
  git add "$expanded_dir"
done < "$GITDIRS_FILE"

# Iterate over each staged file and prompt for a commit message
for file in $(git diff --cached --name-only); do
  echo "Enter commit message for $file:"
  read -r message
  
  # Commit the changes with the user-provided message
  git commit -m "$message" "$file"
done

# Push the changes to the remote repository
git push dotfiles main
