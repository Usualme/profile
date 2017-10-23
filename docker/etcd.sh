#!/bin/bash

docker run -d -p 2379:2379 -p 2380:2380 --name etcd quay.io/coreos/etcd:v2.3.7 -listen-client-urls http://0.0.0.0:2379 -advertise-client-urls http://192.168.0.61:2379