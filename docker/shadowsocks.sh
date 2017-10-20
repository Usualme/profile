#!/bin/bash

docker run -d -p 54399:54399 --name shadowsocks oddrationale/docker-shadowsocks -s 0.0.0.0 -p 54399 -k YOURPASSWORD -m aes-256-cfb 