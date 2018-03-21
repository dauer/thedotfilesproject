#!/usr/bin/env bash

. ./install/software/apt.install

sudo apt-get -y update
sudo apt-get -y upgrade

# Now loop through the above array and install apt-get packages
for i in "${aptlist[@]}"
do
    sudo apt-get install "${i}"
done
