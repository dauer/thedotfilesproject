#!/usr/bin/env bash
#
# https://k9scli.io/

set -euo pipefail

URL_LATEST="https://github.com/derailed/k9s/releases/latest"
URL_REDIRECT=`curl -w "%{url_effective}\n" -I -L -s -S $URL_LATEST -o /dev/null`
TAG=`echo $URL_REDIRECT | grep -Po '(v[0-9\.]*)$'`
URL_DOWNLOAD="https://github.com/derailed/k9s/releases/download/${TAG}/k9s_linux_amd64.deb"
URL_CHECKSUM="https://github.com/derailed/k9s/releases/download/${TAG}/checksums.sha256"

wget -N $URL_DOWNLOAD
wget $URL_CHECKSUM -O checksums.sha256

if sha256sum --check <(cat checksums.sha256 | grep 'k9s_linux_amd64.deb'); then
    echo "Checksum OK - installing..."
    sudo dpkg -i k9s_linux_amd64.deb
else
    echo "Checksom failed!"
fi


