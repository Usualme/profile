#!/bin/bash

set -eo pipefail

sudo apt install zsh git -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"