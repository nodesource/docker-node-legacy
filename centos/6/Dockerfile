FROM centos:centos6
MAINTAINER William Blankenship <william.jblankenship@gmail.com>

# Setup NodeSource Official PPA
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum -y update
RUN yum -y install nodejs gcc-c++ make
RUN npm install -g node-gyp
RUN node-gyp configure || echo ""
