#!/bin/bash
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
  xterm -hold -e bash -c "cd ${image};docker build --no-cache ." &
  echo "DONE!"
done
