#!/bin/bash

set -eo pipefail

cd /etc/apt

sudo copy sources.list sources.list.backup

sudo sed -i 's/us.archive/cn.archive/g' sources.list