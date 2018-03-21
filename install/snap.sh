#!/usr/bin/env bash

. ./install/software/snap.install

# Now loop through the above array and install Snaps
for i in "${snaplist[@]}"
do
    sudo snap install "${i}"
done

# Classic (old style) Snaps
for i in "${snaplistclassic[@]}"
do
    sudo snap install --classic "${i}"
done
