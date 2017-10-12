#!/bin/bash

docker run -p 27017:27017 -v ~/mongodb:/data/db --name mongodb mongo