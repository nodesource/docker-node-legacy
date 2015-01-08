FROM centos:centos7
MAINTAINER William Blankenship <wblankenship@nodesource.com>

# Setup NodeSource Official PPA
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum -y install git nodejs gcc-c++ make
RUN npm install -g node-gyp \
 && npm cache clear
RUN node-gyp configure || echo ""
