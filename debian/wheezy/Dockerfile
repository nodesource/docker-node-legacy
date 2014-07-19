FROM debian:wheezy
MAINTAINER William Blankenship <william.jblankenship@gmail.com>

# Setup NodeSource Official PPA
RUN apt-get update && \
    apt-get upgrade -y --force-yes && \
    apt-get install -y --force-yes \
      curl \
      apt-transport-https \
      lsb-release \
      build-essential \
      python-all

RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install nodejs -y --force-yes
RUN npm install -g node-gyp
RUN node-gyp configure || echo ""
