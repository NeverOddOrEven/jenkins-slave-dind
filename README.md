Dockerfile for jenkins-slave with DinD (Docker in docker)

Build and run:

```
docker build -t bboutier/jenkins-slave-dind .
docker run -it -d --privileged -p 7000:22 --name slave bboutier/jenkins-slave-dind
````

Test ssh connexion (jenkins/jenkins):

```
ssh jenkins@localhost -p 7000

Welcome to Alpine!

The Alpine Wiki contains a large amount of how-to guides and general
information about administrating Alpine systems.
See <http://wiki.alpinelinux.org>.

You can setup the system with the command: setup-alpine

You may change this message by editing /etc/motd.

b5108e9f505f:~$ docker version
Client:
 Version:      17.03.1-ce
 API version:  1.27
 Go version:   go1.7.5
 Git commit:   c6d412e
 Built:        Tue Mar 28 00:40:02 2017
 OS/Arch:      linux/amd64

Server:
 Version:      17.03.1-ce
 API version:  1.27 (minimum version 1.12)
 Go version:   go1.7.5
 Git commit:   c6d412e
 Built:        Tue Mar 28 00:40:02 2017
 OS/Arch:      linux/amd64
 Experimental: false

```

