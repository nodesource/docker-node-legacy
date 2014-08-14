# docker-node

Dockerfiles for building Debian and Ubuntu images with the [NodeSource Node.js](https://github.com/nodesource/distributions) binaries baked in. Automated via Docker Hub: <https://registry.hub.docker.com/u/nodesource/node/>.

# Structure

We have a folder setup for each distrubtion of linux, inside each folder you will find a collection of supported versions of that distribution. All builds are automated.

# Distributions

We currently support the following distrubtions by tag:

* Ubuntu
  * Lucid (broken)
  * Precise
  * Trusty
* Debian
  * Sid
  * Wheezy
  * Jessie

Following after the Node.js image maintained by the Docker team, _nodesource/node:latest_ is an alias to _nodesource/node:jessie_.
