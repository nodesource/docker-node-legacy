FROM centos:centos5
MAINTAINER William Blankenship <william.jblankenship@gmail.com>

# Setup NodeSource Official PPA
RUN yum -y install curl
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
RUN yum -y update
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum -y install nodejs
RUN npm install -g node-gyp
RUN node-gyp configure || echo ""
