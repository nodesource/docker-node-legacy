#!/bin/bash
opts=$1
images=(
  "centos/5"
  "centos/6"
  "centos/7"
  "debian/jessie"
  "debian/sid"
  "debian/wheezy"
  "fedora/heisenbug"
  "ubuntu/lucid"
  "ubuntu/precise"
  "ubuntu/trusty"
)

for image in ${images[@]}; do
  echo -n "Starting ${image} build... "
  xterm -hold -title "${image}" -e bash -c "cd ${image};docker build ${opts} ." &
  echo "DONE!"
done
