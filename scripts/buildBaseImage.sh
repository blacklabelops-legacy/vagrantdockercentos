#!/bin/bash

sudo /home/vagrant/docker-1.6.2/contrib/mkimage.sh -t rinsecentos rinse --distribution centos-7 --arch amd64
docker run -d --name rinsecentos rinsecentos
docker export rinsecentos |  xz --best >>  blacklabelops-centos7-systemd.xz
