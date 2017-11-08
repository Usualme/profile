#!/bin/bash

docker run --link elasticsearch:elasticsearch --name kibana -p 5601:5601 -d kibana