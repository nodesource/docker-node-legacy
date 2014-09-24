FROM fedora:heisenbug
MAINTAINER William Blankenship <wblankenship@nodesource.com>

# Setup NodeSource Official PPA
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum -y install nodejs gcc-c++ make
RUN npm install -g node-gyp
RUN node-gyp configure || echo ""
