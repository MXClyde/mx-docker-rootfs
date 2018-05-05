# Dockerfile to create a Docker image with a proper Ubuntu root fs which can be used
# to enable quicker Docker Mendix Build Pack builds
#
# Author: Clyde Waal, clyde.waal@mendix.com
# Version: 1.0
FROM ubuntu:trusty
LABEL Author="Mendix Digital Ecosystems"
LABEL maintainer="digitalecosystems@mendix.com"

#Install dependencies & remove package lists
RUN apt-get -q -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -q -y && \
  DEBIAN_FRONTEND=noninteractive apt-get install -q -y python wget curl libgdiplus libpq5 && \
  rm -rf /var/lib/apt/lists/*
