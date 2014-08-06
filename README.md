docker-node
===

Dockerfiles for building off of chirslea's N|S PPAs. Automated via docker.

# Structure

We have a folder setup for each distrubtion of linux, inside each folder you will find a collection of supported versions of that distribution. All builds are automated.

# Distributions
We currently support the following distrubtions by tag:

* Ubuntu
  * Lucid (broken)
  * Precise
  * Saucy
  * Trusty
* Debian
  * Sid
  * Wheezy
  * Jessie

Following after the node.js image maintained by the docker team, _nodesource/node:latest_ is an alias to _nodesource/node:jessie_.
