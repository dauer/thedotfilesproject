#!/usr/bin/env bash

echo "Setting up Ubuntu..."


echo "Checking for SSH"
if [ ! -d $HOME/.ssh/ ]; then
    echo "SSH was not found - EXIT SCRIPT!"
    exit
fi

echo "Setting right permissions for SSH"
chmod -v 700 ~/.ssh
chmod -v 600 ~/.ssh/*

## Install all applications in application folder
echo "APPS"
find applications -type f -print0 | xargs -0 sudo chmod 755
run-parts --report --arg=$(pwd) applications
