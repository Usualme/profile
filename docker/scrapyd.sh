#!/bin/bash

docker run -p 6800:6800 -d --name scrapyd -v ~/scrapyd:/var/lib/scrapyd vimagick/scrapyd