FROM centos:centos5
MAINTAINER William Blankenship <wblankenship@nodesource.com>

# Setup NodeSource Official PPA
RUN yum -y install curl
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/5/x86_64/epel-release-5-4.noarch.rpm
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum -y install python26 nodejs gcc-c++ make
RUN npm install -g node-gyp
RUN node-gyp --python /usr/bin/python2.6 configure
