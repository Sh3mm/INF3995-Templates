# Docker with VNC and mate-ubuntu

This Dockerfile is made to be used on any system inside a Docker environment.

Since You will be installing a lot of packages and libraries on your system, it might be easier to nuke the dev environment instead of reinstalling your distro in case of a major problem. It also makes cleaning up after the course much easier. Using this docker environment can also make it possible to develop without having to install Linux.

## How to use:

First, build the Dockerfile into a usable image:
```bash
docker build -t rosign .
```

Then, create the docker container:
```
docker create --name="teamX-ros-ign" -p 5901:5901 -it rosign /bin/bash
```

Once this is done you can use the following command to start the docker container:
```
docker start --attach -i teamX-ros-ign
```

this will prompt you to add a password. Once you do so, you'll be able to use any vnc client to connect to `localhost:5901` to interact with your GUI.

once you are done with your dev session and want to close the server, simply run:
```
docker stop teamX-ros-ign
```

starting and stopping the same docker container will allow you to keep whatever changes/installations you made to the container witout constantly having to recompile the Dockerfile.

## Linking folders:
to link a folder from your file manager to the container's you will need to add a volume argument to the creation command as follow:

```
docker create --name="teamX-ros-ign" -v path/to/foler:where/it/goes/in/container -p 5901:5901 -it rosign /bin/bash
```