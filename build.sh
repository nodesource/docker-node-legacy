# Get script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Logs matter.
mkdir -p $DIR/logs/

# Build Debian Containers.
docker build -t crackerz/nodejs:jessie $DIR/debian/jessie/ 1> ./logs/jessie.log 2>&1 &
docker build -t crackerz/nodejs:sid $DIR/debian/sid 1> ./logs/sid.log 2>&1 &
docker build -t crackerz/nodejs:wheezy $DIR/debian/wheezy 1> ./logs/wheezy.log 2>&1 &

# Build Ubuntu Containers.
docker build -t crackerz/nodejs:precise $DIR/ubuntu/precise 1> ./logs/precise.log 2>&1 &
docker build -t crackerz/nodejs:saucy $DIR/ubuntu/saucy 1> ./logs/saucy.log 2>&1 &
docker build -t crackerz/nodejs:trusty $DIR/ubuntu/trusty 1> ./logs/trusty.log 2>&1 &

# Output Progress to Terminal (comment out in production)
tail  -f ./logs/jessie.log \
      -f ./logs/sid.log \
      -f ./logs/wheezy.log \
      -f ./logs/precise.log \
      -f ./logs/saucy.log \
      -f ./logs/trusty.log
