#!/bin/bash

set -eo pipefail

sudo apt install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

sudo apt update

sudo apt -y install docker-ce

# 当前用户加入 docker 用户组
sudo usermod -aG docker $USER

# daocloud 加速器
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://7b2a7798.m.daocloud.io