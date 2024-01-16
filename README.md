# INF3995-Templates

Welcome To INF3995. This repo contains all the base templates you will need for this semester's project!

## Dev environment

We will be using Ubuntu 22.04 as a base environment for the project. There are many way to get am Ubuntu environment 
(WSL, Docker images, VMs, Dual booting, ect). Will will always try to help you to the best of our knowledge. However, we
will only support two type of installation: A dual boot Ubuntu and a docker container with a VNC server.

The installation instructions are provided in the [Installation](Installation) folder

## Running the base simulation

Since we are using ROS2 and gazebo fortress, we will be providing you a modified version of the [proposed template](https://github.com/gazebosim/ros_gz_project_template/tree/fortress) that already includes the limo model. The template workspace is available in the [project_ws](project_ws) folder. We recommend you use this folder as a base for your project as it already comes with a lot of utilities that can be modified for your project.