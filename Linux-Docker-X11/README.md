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
rocker --x11 --network=host --device=/dev/dri --image-name=rosign rosignbase
```

## Linking folders:
to link a folder from your file manager to the container's you will need to add a volume argument (`-v path/to/foler:where/it/goes/in/container`) to the creation command as follow:

```bash
rocker --x11 --network=host --volume path/to/foler:where/it/goes/in/container --device=/dev/dri --image-name=rosign rosignbase
```


### Warning:
You may need to check the main [rocker](https://github.com/osrf/rocker) page to check how to use your GPU (such as Nvidia GPUs)

