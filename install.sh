#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone git@github.com:tmkarthi/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    git checkout tmkarthi
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
