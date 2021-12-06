#!/bin/bash

#docker container rm $(docker container ls -aq) -f
#docker image rm $(docker images)

#docker build -t optimizer-image --build-arg IMAGE_IN=$1 --build-arg IMAGE_OUT=$2 .

apt-get update
apt-get install maven
mvn clean compile

#docker run -it --name optimizer-docker -d optimizer-image



