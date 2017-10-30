#!/bin/bash

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz

sudo tar zxvf jdk-8u151-linux-x64.tar.gz -C /opt

sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_151/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_151/bin/javac 100

echo 'export JAVA_HOME=/opt/jdk1.8.0_151' >> ~/.zshrc