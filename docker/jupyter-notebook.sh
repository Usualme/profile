#!/bin/bash

docker run -d -p 8888:8888 -v ~/jupyter:/home/jovyan --name jupyter jupyter/datascience-notebook start-notebook.sh --NotebookApp.password_required=False --NotebookApp.token=''