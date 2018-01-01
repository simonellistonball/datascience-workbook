#!/bin/sh

docker run -d -p 8888:8888 \
  -v /data:/data \
  -e GRANT_SUDO=yes \
  --user root \
  -e SCALA_HOME=/home/jovyan/scala/scala-2.11.8  \
  simonellistonball/datascience-workbook \
  start-notebook.sh 
