# Get script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Logs matter.
mkdir -p ./logs/

# Build Containers.
parallel "docker build --no-cache -t crackerz/nodejs:{} $DIR/dist/{} 2>&1 | tee ./logs/{}.log" ::: wheezy jessie sid precise saucy trusty

docker push crackerz/nodejs 2>&1 | tee ./logs/push.log
