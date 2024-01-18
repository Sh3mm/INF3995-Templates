# Docker with VNC and mate-ubuntu

This Dockerfile is made to be used on any system inside a Docker environment.

Since You will be installing a lot of packages and libraries on your system, it might be easier to nuke the dev environment instead of reinstalling your distro in case of a major problem. It also makes cleaning up after the course much easier. Using this docker environment can also make it possible to develop without having to install Linux.

## How to use:

First, build the Dockerfile into a usable image:
```bash
docker build -t teamx-ros-ign .
```

After creating the image, run the following command to start the server:
```bash
docker run --rm -p 5901:5901 -it teamx-ros-ign bash -c "TVNC_WM=xfce /opt/TurboVNC/bin/vncserver -securitytypes TLSNone,X509None,None; /bin/bash" 
```

### RealVNC client
for those of you that use RealVNC as your client, it does not like having no security by default. So you either need to deactivate the security requirement or run the following command that will prompt you for a password:
```bash
docker run --rm -p 5901:5901 -it teamx-ros-ign bash -c "TVNC_WM=xfce /opt/TurboVNC/bin/vncserver; /bin/bash" 
```

## Linking folders:
to link a folder from your file manager to the container's you will need to add a volume argument to the creation command as follow:

```bash
docker run --rm -p 5901:5901 -v path/to/foler:where/it/goes/in/container -it teamx-ros-ign bash -c "TVNC_WM=xfce /opt/TurboVNC/bin/vncserver -securitytypes TLSNone,X509None,None; /bin/bash" 
```
