#!/bin/bash

wget --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz

sudo tar zxvf jdk-8u5-linux-x64.tar.gz -C /opt

update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_05/bin/java 100
update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_05/bin/javac 100

echo 'export JAVA_HOME=/opt/jdk1.8.0_05' >> ~/.zshrc