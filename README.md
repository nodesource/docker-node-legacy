# docker-node

Dockerfiles for building Debian and Ubuntu images with the [NodeSource Node.js](https://github.com/nodesource/distributions) binaries baked in. Automated via Docker Hub: <https://registry.hub.docker.com/u/nodesource/node/>.

# Structure

We have a folder setup for each distrubtion of linux, inside each folder you will find a collection of supported versions of that distribution. All builds are automated.

## Ubuntu-based images

* **Ubuntu 12.04 LTS** (Precise Pangolin) - `docker pull nodesource/node:precise`
* **Ubuntu 14.04 LTS** (Trusty Tahr) - `docker pull nodesource/node:trusty`

## Debian-based images

* **Debian 7 / stable** (wheezy) - `docker pull nodesource/node:wheezy`
* **Debian testing** (jessie) - `docker pull nodesource/node:jessie`
* **Debian unstable** (sid) - `docker pull nodesource/node:sid`

Following after the Node.js image maintained by the Docker team, _nodesource/node:latest_ is an alias to _nodesource/node:jessie_.

`docker pull nodesource/node`
