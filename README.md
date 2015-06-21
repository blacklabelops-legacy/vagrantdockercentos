# BlackLabelOps/VagrantDockerCentOS

Building Docker CentOS 7.x Base Image from a Vagrant box.

Builds the [blacklabelops/centos](https://registry.hub.docker.com/u/blacklabelops/centos/) container on [Docker Hub](https://registry.hub.docker.com).

Features:

* Automatically dumps the base image in project folder.
* Tested On: Vagrant 1.7.2, Virtualbox 4.3.28
* Includes: CentOS 7.1

Required Software:

* [Vagrant](https://www.vagrantup.com/)
* [Virtualbox](https://www.virtualbox.org/)

## Build and Use Box

Simply pull from Atlas and use the box!

~~~~
$ vagrant up
~~~~    

## How it Works

The Vagrantfile includes scripts that installs the required software and scripts. Afterwards the creation script is triggered and the image is available in the internal Docker.

Finally the build scripts exports the image and puts it inside the project folder outfide the machine.

### Scripts

* scripts/installRinse.sh: Installs [Rinse](http://collab-maint.alioth.debian.org/rinse/) 

> Rinse is a simple tool which is designed to carry out the installation of a new RPM-based distribution.

* scripts/installMkImage.sh: Downloads Docker [mkimage.sh](https://github.com/docker/docker/tree/master/contrib). 

A docker managed script that can create base images from fully installed distributions.

## Use the Base Image

The base image is a simple tarball. You can import it in any docker installation:

~~~~
$ cat dockercentos.tar | docker load
~~~~  

## References

* [Vagrant Homepage](https://www.vagrantup.com/)
* [Virtualbox Homepage](https://www.virtualbox.org/)
* [Docker Homepage](https://www.docker.com/)
* [Docker Userguide](https://docs.docker.com/userguide/)
* [Docker Hub Homepage](https://registry.hub.docker.com)



