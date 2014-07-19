# Build Debian Containers
docker build -t crackerz/nodejs:jessie ./debian/jessie/ &
docker build -t crackerz/nodejs:sid ./debian/sid &
docker build -t crackerz/nodejs:wheezy ./debian/wheezy &

# Build Ubuntu Containers
docker build -t crackerz/nodejs:precise ./ubuntu/precise &
docker build -t crackerz/nodejs:saucy ./ubuntu/saucy &
docker build -t crackerz/nodejs:trusty ./ubuntu/trusty &
