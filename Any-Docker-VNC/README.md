# Docker with VNC and mate-ubuntu

This Dockerfile is made to be used on any system inside a Docker environment.

Since You will be installing a lot of packages and libraries on your system, it might be easier to nuke the dev environment instead of reinstalling your distro in case of a major problem. It also makes cleaning up after the course much easier. Using this docker environment can also make it possible to develop without having to install Linux.

## How to use:

First, build the Dockerfile into a usable image:
```bash
docker build -t rosign .
```

After Creating the Image, run the following command to start a containner:
```bash
docker run --rm -p 5901:5901 -it rosign bash -c "TVNC_WM=mate /opt/TurboVNC/bin/vncserver; /bin/bash" 
```
It will prompt you for a password, and after you will be able to connect to the vnc server with any VNC client at `localhost:5901`


## Linking folders:
to link a folder from your file manager to the container's you will need to add a volume argument to the creation command as follow:

```bash
docker run --rm -p 5901:5901 -v path/to/foler:where/it/goes/in/container -it inf3995-equipe0-simulation bash -c "TVNC_WM=mate /opt/TurboVNC/bin/vncserver; /bin/bash"
```
