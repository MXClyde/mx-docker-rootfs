# Dockerfile to create a Docker image with a proper Ubuntu root fs which can be used
# to enable quicker Docker Mendix Build Pack builds
#
# Author: Clyde Waal, clyde.waal@mendix.com
# Version: 1.0
FROM ubuntu:latest
LABEL Author="Mendix Digital Ecosystems"
LABEL maintainer="digitalecosystems@mendix.com"

#Install Python & wget
RUN apt-get -q -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -q -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -q -y python wget curl libgdiplus libpq5
  
# delete all the apt list files since they're big and get stale quickly
RUN rm -rf /var/lib/apt/lists/*