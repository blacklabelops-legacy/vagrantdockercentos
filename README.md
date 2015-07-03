# BlackLabelOps/VagrantDockerCentOS

Building Docker CentOS 7.x Base Image with Rinse in a Vagrant box.

Features:

* Tested On: Vagrant 1.7.2, Virtualbox 4.3.28
* Includes: CentOS 7.1

Required Software:

* [Vagrant](https://www.vagrantup.com/)
* [Virtualbox](https://www.virtualbox.org/)

## Build and Use Box

Simply pull from Atlas and use the box!

~~~~
$ vagrant up
$ vagrant ssh
$ cd /vagrant
$ ./scripts/buildBaseImage.sh
~~~~    

The script calls Rinse with the following parameters:
 
* --distribution centos-7 
* --arch amd64

Currently, the script does not take parameters. You have to adjust the parameters inside the script.

In order to get a list of distributions call

~~~~
$ rinse --list-distributions
~~~~  

The package lists are situated at /etc/rinse/.

## How it Works

The Vagrantfile includes scripts that installs the required software and scripts. 

Afterwards you manually trigger the creation script and the image is available in the internal Docker.

Finally the build scripts exports the image and puts it inside the project folder outside the machine.

### Scripts

* scripts/installRinse.sh: Installs [Rinse](http://collab-maint.alioth.debian.org/rinse/) 

> Rinse is a simple tool which is designed to carry out the installation of a new RPM-based distribution.

* scripts/installMkImage.sh: Downloads Docker [mkimage.sh](https://github.com/docker/docker/tree/master/contrib). 

A docker managed script that can create base images from fully installed distributions.

## Use the Base Image

The base image is a simple tarball. You can import it in any docker installation:

~~~~
$ docker load < dockercentos.tar
~~~~  

## References

* [Vagrant Homepage](https://www.vagrantup.com/)
* [Virtualbox Homepage](https://www.virtualbox.org/)
* [Docker Homepage](https://www.docker.com/)
* [Docker Userguide](https://docs.docker.com/userguide/)
* [Docker Hub Homepage](https://registry.hub.docker.com)



