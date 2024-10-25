
#!/bin/bash

cd ~/

git config --global init.defaultBranch <branch>
git config --global user.name <name>
git config --global user.email <email>
git init
git remote add <repo-name> <ssh-link>

git pull <repo-name> <branch>
