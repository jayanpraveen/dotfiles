#!/usr/bin/env bash

https://github.com/holman/dotfiles/blob/master/homebrew/install.sh

if test ! $(which brew)
if ! brew --version &> /dev/null
then
    echo "Homebrew isn't installed!"
    echo "Installing..."
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && echo "Homebrew installed!"
fi

echo "Installing applications form Brewfile"
brew bundle --file ./Brewfile

