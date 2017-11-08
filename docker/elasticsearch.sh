#!/bin/bash

docker run -d -v elasticsearch:/usr/share/elasticsearch/data --name elasticsearch -p 9200:9200 -p 9300:9300 elasticsearch