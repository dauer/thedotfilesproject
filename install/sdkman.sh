#!/usr/bin/env bash

# Check for SDKMAN and install if not present
if [ ! $SDKMAN_VERSION ]; then
    curl -s "https://get.sdkman.io" | bash
fi

[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

. ./install/software/sdkman.install

for i in "${sdklist[@]}"
do
    yes | sdk install ${i}
done
