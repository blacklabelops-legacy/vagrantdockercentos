#!/bin/bash

sudo /home/vagrant/docker-1.6.2/contrib/mkimage.sh -t rinsecentos rinse --distribution centos-7 --arch amd64
docker save rinsecentos > /vagrant/dockercentos.tar
