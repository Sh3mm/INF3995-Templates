# Linux Docker with integrated graphics and no VNC

This Dockerfile is made to be used on Linux in conjunction with [rocker](https://github.com/osrf/rocker)

Since You will be installing a lot of packages and libraries on your system, it might be easier to nuke the dev environment instead of reinstalling your distro in case of a major problem. It also makes cleaning up after the course much easier.

## How to use:

First, Install [rocker](https://github.com/osrf/rocker) using pip:
```bash
pip3 install rocker
```

Then build the Dockerfile with:
```bash
docker build -t "rosignbase" ./
```

Finally make the new image using rocker:
```bash
rocker --x11 --network=host --device=/dev/dri --mode=dry-run --image-name=rosign rosignbase
```

After running the previous command, you should see the command you will need to
run each time you want to use the container. It should look like the following: 
```shell
# DO NOT RUN THIS COMMAND, USE YOUR OWN
docker run --rm -it  -e DISPLAY -e TERM   -e QT_X11_NO_MITSHM=1   -e XAUTHORITY=/tmp/.dockerzqv0y_01.xauth -v /tmp/.dockerzqv0y_01.xauth:/tmp/.dockerzqv0y_01.xauth   -v /tmp/.X11-unix:/tmp/.X11-unix   -v /etc/localtime:/etc/localtime:ro  rosignbase
```

### Warning:
You may need to check the main [rocker](https://github.com/osrf/rocker) page to check how to use your GPU (such as Nvidia GPUs)

