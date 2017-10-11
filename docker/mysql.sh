#!/bin/bash

# docker mysql
docker run -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql -v /etc/mysql/my.cnf:/etc/mysql/my.cnf --env MYSQL_ROOT_PASSWORD=adminn mariadb:10.1.21