#!/bin/bash

# docker mysql
docker run -p 3306:3306 -v ~/mysql:/var/lib/mysql --name mysql -v ~/mysql/my.cnf:/etc/mysql/my.cnf --env MYSQL_ROOT_PASSWORD=adminn mariadb