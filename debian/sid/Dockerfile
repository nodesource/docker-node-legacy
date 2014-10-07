FROM debian:sid
MAINTAINER William Blankenship <wblankenship@nodesource.com>

# Setup NodeSource Official PPA
RUN apt-get update \
 && apt-get install -y --force-yes \
      curl \
      apt-transport-https \
      lsb-release \
      build-essential \
      python-all \
 && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
 && curl -sL https://deb.nodesource.com/setup | bash - \
 && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
 && apt-get install nodejs -y --force-yes \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g node-gyp \
 && npm cache clear

RUN node-gyp configure || echo ""
