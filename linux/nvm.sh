#!/bin/bash

set -eo pipefail

sudo apt update
sudo apt install build-essential libssl-dev

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

property=$(cat <<EOF
# for node.js version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
EOF
)

files=(~/.bashrc ~/.zshrc)
for file in "${files[@]}"
do
    if [ -f $file ]; then
        echo $property >> $file
    fi    
done