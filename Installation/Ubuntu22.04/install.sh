#! /bin/bash

apt update; apt upgrade -y

# INSTALL UTILS
apt install lsb-release wget curl gnupg python3-pip git -y

# OPENGL/MESA UTILS
apt install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev -y


# INSTALL IGNITION GAZEBO
wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null

apt update; apt install ignition-fortress -y


# INSTALL ROS2
apt install software-properties-common -y
pip3 install vcstool colcon-common-extensions
add-apt-repository universe

curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

apt update; apt install ros-humble-desktop -y

echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
echo "export GZ_VERSION=fortress" >> /root/.bashrc




