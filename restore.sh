#!/bin/bash

# Install homebrew if it is not installed yet
if ! command -v brew &> /dev/null
then
    echo "homebrew is not installed"
    echo "Trying to install homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install all applications backuped by homebrew
brew bundle install --file=./Brewfile --no-lock

# restore gpg config (as per https://superuser.com/a/1277425)
echo "restoring gpg config..."
cp -r ./.gnupg ~/

# restore ssh config
echo "restoring ssh config..."
cp -r ./.ssh ~/

# restore vpn config
echo "restoring vpn config ..."
cp -r ./vpn ~/<path_to_vpn_folder>

# restore user cert
echo "restoring user cert ..."
cp -r ./<user_cert> ~/<path_to_user_cert>/<user_cert>

# restore ./zshrc and history
echo "restoring ./zshrc and history ..."
cp ./.zshrc ~/.zshrc
cp ./.zsh_history ~/.zsh_history
source ~/.zshrc