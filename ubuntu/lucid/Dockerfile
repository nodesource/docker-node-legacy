FROM ubuntu:lucid
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
RUN apt-get install nodejs --force-yes -y
