## Docker

----

### The ultimate challenge

![Image](images/the-challenge.png)

----

### Hell matrix

<img src="images/the-matrix-from-hell.png" width="70%" />

----

### Fret transport before 1960

![Image](images/cargo-transport-pre-1960.png)

----

### Hell matrix again

![Image](images/also-a-matrix-from-hell.png)

----

### Solution : Multimodal container

![Image](images/intermodal-shipping-container.png)

----

### Docker is a code container

![Image](images/shipping-container-for-code.png)

----

### Docker solve hell matrix

<img src="images/eliminates-matrix-from-hell.png" width="70%" />

----

### A little history

* [IBM VM/370 (1972)](https://en.wikipedia.org/wiki/VM_%28operating_system%29)

* [Linux VServers (2001)](http://www.solucorp.qc.ca/changes.hc?projet=vserver)

* [Solaris Containers (2004)](https://en.wikipedia.org/wiki/Solaris_Containers)

* [FreeBSD jails (1999-2000)](https://www.freebsd.org/cgi/man.cgi?query=jail&sektion=8&manpath=FreeBSD+4.0-RELEASE)

Containers are not a new concept

----

### Containers vs. VMs

![Image](images/containers-vs-vms.png)

----

### Why containers are light?

![Image](images/why-are-containers-lightweight.png)

----

### Docker fondamentals

![Image](images/basics-of-docker-system.png)

----

### Change and updates

![Image](images/changes-and-updates.png)

----

### Cgroups (control groups)

cgroups (control groups) is a Linux kernel feature to limit, count and isolate resource usage (processor, memory, disk, etc.)

----

### Namespaces

- PID
  - Isolate pid allocation, processus list and details
- Network
  - Isolate network interface controller, iptables rules (firewall), routing tables, etc.
- IPC
  - Isolate system V communicating system accross processus

----

### Namespaces

- Mount
  - Allow to create different file system models, or create read only mount points
- UTS
  - Allow host name change
- User
  - Isolate user authentication and privileges 

----

### Layer

![Image](http://charlesbjohnson.github.io/docker-introduction/public/images/image_vs_container_diagram.png)

----

### Image

An images is a readonly file system

```bash
$ docker images

REPOSITORY      TAG       IMAGE ID       CREATED        SIZE
fedora          latest    ddd5c9c1d0f2   3 days ago     204.7 MB
centos          latest    d0e7f81ca65c   3 days ago     196.6 MB
ubuntu          latest    07c86167cdc4   4 days ago     188 MB
redis           latest    4f5f397d4b7c   5 days ago     177.6 MB
postgres        latest    afe2b5e1859b   5 days ago     264.5 MB
alpine          latest    70c557e50ed6   5 days ago     4.798 MB
debian          latest    f50f9524513f   6 days ago     125.1 MB
busybox         latest    3240943c9ea3   2 weeks ago    1.114 MB
```

----

### Container

A container is a set of isolated processus which executes on this filesystem.

```bash
$ docker ps

CONTAINER ID        IMAGE                        COMMAND                CREATED              STATUS              PORTS               NAMES
4c01db0b339c        ubuntu:12.04                 bash                   17 seconds ago       Up 16 seconds       3300-3310/tcp       webapp
d7886598dbe2        crosbymichael/redis:latest   /redis-server --dir    33 minutes ago       Up 33 minutes       6379/tcp            redis,webapp/db
```

----

### Création d'une image

A Dockerfile is a file which describre how an image should be created.

```dockerfile
FROM ubuntu

RUN apt-get install htop

CMD htop -v
```

----

### Docker build

Image creation is triggered by build command.

```bash
$ docker build .

Uploading context 10240 bytes
Step 1/3 : FROM busybox
Pulling repository busybox
 ---> e9aa60c60128MB/2.284 MB (100%) endpoint: https://cdn-registry-1.docker.io/v1/
Step 2/3 : RUN ls -lh /
 ---> Running in 9c9e81692ae9
total 24
drwxr-xr-x    2 root     root        4.0K Mar 12  2013 bin
drwxr-xr-x    5 root     root        4.0K Oct 19 00:19 dev
drwxr-xr-x    2 root     root        4.0K Oct 19 00:19 etc
drwxr-xr-x    2 root     root        4.0K Nov 15 23:34 lib
lrwxrwxrwx    1 root     root           3 Mar 12  2013 lib64 -> lib
dr-xr-xr-x  116 root     root           0 Nov 15 23:34 proc
lrwxrwxrwx    1 root     root           3 Mar 12  2013 sbin -> bin
dr-xr-xr-x   13 root     root           0 Nov 15 23:34 sys
drwxr-xr-x    2 root     root        4.0K Mar 12  2013 tmp
drwxr-xr-x    2 root     root        4.0K Nov 15 23:34 usr
 ---> b35f4035db3f
Step 3/3 : CMD echo Hello world
 ---> Running in 02071fceb21b
 ---> f52f38b7823e
Successfully built f52f38b7823e
Removing intermediate container 9c9e81692ae9
Removing intermediate container 02071fceb21b
```

----

### Run container

```bash
$ docker run --name test -it debian

Unable to find image 'debian:latest' locally
latest: Pulling from library/debian
05d1a5232b46: Pull complete 
Digest: sha256:07fe888a6090482fc6e930c1282d1edf67998a39a09a0b339242fbfa2b602fff
Status: Downloaded newer image for debian:latest
root@d6c0fe130dba:/# exit 13
```

```bash
$ echo $?
13
```

```bash
$ docker ps -a | grep test
d6c0fe130dba        debian:7            "/bin/bash"         26 seconds ago      Exited (13) 17 seconds ago                         test
```

----

### Detach a container

```bash
$ docker run --name test -it debian

root@e2f798002584:/# 
```

```bash
$ docker run --name test -d debian

77b89ea9ce3537dff386149cb2cb51dc482413a19f8106b11814a66143d8360b
```

```bash
$ docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                      PORTS               NAMES
77b89ea9ce35        debian              "bash"              54 seconds ago      Exited (0) 53 seconds ago                       test
```

----

### Environment variables

Environement variables are used to parameterized a container.

```bash
$ docker run -d -e POSTGRES_ENV_POSTGRES_USER='bar' -e POSTGRES_ENV_POSTGRES_PASSWORD='foo' postgres
```

----

### Network

To get access to the service running in container, a port must be exposed and mapped on host machine

```bash
$ docker run --name nginx -p 8080:80 -d nginx
```

----

### Persistence

To persist data from containers, volumes must be mounted

```bash
$ docker run -d --name devtest -v myvol2:/app nginx:latest
```

```bash
"Mounts": [
    {
        "Type": "volume",
        "Name": "myvol2",
        "Source": "/var/lib/docker/volumes/myvol2/_data",
        "Destination": "/app",
        "Driver": "local",
        "Mode": "",
        "RW": true,
        "Propagation": ""
    }
]
```

----

### Log files

By default, Docker write on standard output.

```bash
$ docker run --name test -d busybox sh -c "while true; do $(echo date); sleep 1; done"
```

```bash
$ date
Tue 14 Nov 2017 16:40:00 CET
```

```bash
$ docker logs -f --until=2s
Tue 14 Nov 2017 16:40:00 CET
Tue 14 Nov 2017 16:40:01 CET
Tue 14 Nov 2017 16:40:02 CET
```

----

### Docker compose

To simplify all preceding notions, Docker use a yaml file and a tool named docker-compose to describe full software stacks.

```yaml
version: '3.3'

services:
   db:
     image: mysql:5.7
     volumes:
       - db_data:/var/lib/mysql
     restart: always
     environment:
       MYSQL_ROOT_PASSWORD: somewordpress
       MYSQL_DATABASE: wordpress
       MYSQL_USER: wordpress
       MYSQL_PASSWORD: wordpress

   wordpress:
     depends_on:
       - db
     image: wordpress:latest
     ports:
       - "8000:80"
     restart: always
     environment:
       WORDPRESS_DB_HOST: db:3306
       WORDPRESS_DB_USER: wordpress
       WORDPRESS_DB_PASSWORD: wordpress
volumes:
    db_data:
```

----

### Other orchestrators

* Kubernetes
* Rancher
* Mesos
* ...

----

### Quelques cas d'usage
#### Microservices
<img src="https://github.com/dockersamples/example-voting-app/raw/master/architecture.png" width="60%">
