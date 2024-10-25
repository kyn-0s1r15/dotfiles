these files should be sufficient for automated git management of any project,


1. generate ssh key 

ssh-keygen

2. navigate to keygen dir and copy paste public key to SSH and GPG keys found in githubs settings.

3. SET DIRECTORIES, rename file paths and config user details, make sure that branch is set to main for github

4. run script for initial commit

cd C:\path\to\git\scripts
chmod +x .\gitOSpush.sh
.\gitOSpush.sh



If the initial commit fails manually upload the the initial commit. Subsequent use will work after git pull
Use the same project directory, idealy non user dir, but youre a windows user
