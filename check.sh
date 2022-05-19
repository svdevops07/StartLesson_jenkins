#!/bin/bash

a=`sudo lsof -t -i:7778`

if [ "$a" != "" ];
  then
    echo $a
    echo "port is not empty"
    docker stop "boxfuse-tomcat"
    docker rm "boxfuse-tomcat"
  else
    echo "port is empty"
fi