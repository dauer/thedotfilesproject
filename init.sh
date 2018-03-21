#!/usr/bin/env bash

echo "Checking for SSH"
if [ ! -d $HOME/.ssh/ ]; then
    echo "SSH was not found - EXIT SCRIPT!"
    exit
fi

if [ ! -f $HOME/.ssh/id_rsa ]; then
    echo "SSH private key not found - EXIT SCRIPT!"
    exit
fi

# Setting right permissions for SSH
chmod -v 600 ~/.ssh/id_rsa
chmod -v 700 ~/.ssh
