docker-node
===

Dockerfiles for building off of chirslea's N|S PPAs

# Usage

```sh
./build.sh
```

All docker containers are built in parallel using gnu parallel. Distributions are applied as tags to the _crackerz/nodejs_ repository and then uploaded collectively to docker hub.

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
