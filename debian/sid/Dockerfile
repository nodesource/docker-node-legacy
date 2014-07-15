FROM debian:sid
MAINTAINER William Blankenship <william.jblankenship@gmail.com>

# Setup NodeSource Official PPA
RUN apt-get update
RUN apt-get install apt-utils -y --force-yes
RUN apt-get upgrade -y --force-yes
RUN apt-get install curl -y --force-yes
RUN apt-get install apt-transport-https -y --force-yes
RUN apt-get install lsb-release -y --force-yes
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN apt-get install nodejs -y --force-yes
RUN apt-get install build-essential -y --force-yes
RUN npm install -g node-gyp
RUN mkdir /root/.node-gyp
RUN node-gyp configure || echo ""
