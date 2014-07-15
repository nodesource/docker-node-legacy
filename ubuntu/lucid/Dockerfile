FROM ubuntu:lucid

# Setup NodeSource Official PPA
RUN apt-get update
RUN apt-get install libc6 --force-yes -y
RUN apt-get install curl --force-yes -y
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install nodejs --force-yes -y
