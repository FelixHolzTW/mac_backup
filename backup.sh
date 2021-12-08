#!/bin/bash

# export all applications installed via homebrew
echo "backing up brew packages ..."
brew bundle dump --force

# backup gpg folder (as per https://superuser.com/a/1277425)
echo "backing up gpg config ..."
cp -r ~/.gnupg ./

# backup ssh folder
echo "backing up ssh config ..."
cp -r ~/.ssh ./

# backup vpn config
echo "backing up vpn config ..."
cp -r ~/<path_to_vpn_folder> ./

# backup user cert
echo "backing up user cert ..."
cp -r ~/<path_to_user_cert>/<user_cert> ./<user_cert>

# backup ./zshrc and history
echo "backing up ./zshrc and history ..."
cp ~/.zshrc ./.zshrc
cp ~/.zsh_history ./.zsh_history
