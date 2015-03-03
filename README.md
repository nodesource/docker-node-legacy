docker-node (depreciated)
===

### We now offer images with version pinning for node. Please follow the migration path to begin using these images.

These images can be found [here](https://github.com/nodesource/docker-node). Note, they are currently only available for Debian flavor distributions.

# Migration Path

### Step 1.

Determine the version of node contained in the docker container you are using, for example:

```text
$ docker run -it nodesource/node:wheezy node -v`
v0.10.32
```

### Step 2. 

Use this version as the tag for your new image, for example:

```text
$ docker pull nodesource/wheezy:0.10.32
```

### (optional) Step 3.

If you would like to determine the differences in packages between the images, you can run:

```text
$ docker run nodesource/node:wheezy dpkg --get-selections > old.log && docker run nodesource/wheezy:0.10.32 dpkg --get-selections > new.log && diff old.log new.log && rm old.log new.log
```
You should find that they are all near to identical.

# docker-node (legacy)

Dockerfiles for building Debian and Ubuntu images with the [NodeSource Node.js](https://github.com/nodesource/distributions) binaries baked in. Automated via Docker Hub: <https://registry.hub.docker.com/u/nodesource/node/>.

[![node](http://dockeri.co/image/nodesource/node)](https://registry.hub.docker.com/u/nodesource/node)

# Structure

We have a folder setup for each distrubtion of linux, inside each folder you will find a collection of supported versions of that distribution. All builds are automated.

## Ubuntu-based images

* **Ubuntu 12.04 LTS** (Precise Pangolin) - `docker pull nodesource/node:precise`
* **Ubuntu 14.04 LTS** (Trusty Tahr) - `docker pull nodesource/node:trusty`

## Debian-based images

* **Debian 7 / stable** (wheezy) - `docker pull nodesource/node:wheezy`
* **Debian testing** (jessie) - `docker pull nodesource/node:jessie`
* **Debian unstable** (sid) - `docker pull nodesource/node:sid`

## RPM-Based images
* **Fedora 20** (Heisenbug) - `docker pull nodesource/node:heisenbug`
* **CentOS 5** - `docker pull nodesource/node:centos5`
* **CentOS 6** - `docker pull nodesource/node:centos6`
* **CentOS 7** - `docker pull nodesource/node:centos7`

Following after the Node.js image maintained by the Docker team, _nodesource/node:latest_ is an alias to _nodesource/node:jessie_.

`docker pull nodesource/node:latest`

*NOTE*
`docker pull nodesource/node` will download _all_ tags for the docker image, which is roughly 8GB. We urge you to pick a tag when downloading. Example: `docker pull nodesource/node:jessie`

