#!/bin/bash

# Add local zshrc
touch ~/.zshrc_local

# Add local bin if it doesn't exist
mkdir ~/bin 2> /dev/null

# Install oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
echo "Oh-My-Zsh Installed"

# Setup dotfile
. $HOME/dotfiles/setup_links.sh
. $HOME/dotfiles/setup_vim.sh

case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" 
      . $HOME/dotfiles/setup_osx.sh
      
      ;; 
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac
