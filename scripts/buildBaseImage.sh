#!/bin/bash

sudo ~/docker-1.6.2/contrib/mkimage.sh -t blacklabelops/centos rinse --distribution centos-7 --arch amd64
docker save blacklabelops/centos > /vagrant/dockercentos.tar
