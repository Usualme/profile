#!/bin/bash

docker run -d --name beanstalkd -p 11300:11300 schickling/beanstalkd