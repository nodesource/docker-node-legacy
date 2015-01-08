FROM ubuntu:trusty
MAINTAINER William Blankenship <wblankenship@nodesource.com>

# Setup NodeSource Official PPA
RUN apt-get update && \
    apt-get install -y --force-yes \
      apt-transport-https \
      build-essential \
      curl \
      git \
      lsb-release \
      python-all

RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install nodejs -y --force-yes
RUN npm install -g node-gyp
RUN apt-get install python-all -y --force-yes
RUN node-gyp configure || echo ""
