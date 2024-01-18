################# BASE SET-UP ###################

FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt upgrade -y
# INSTALL UTILS
RUN apt install lsb-release wget curl gnupg git python3-pip gedit -y

# OPENGL/MESA UTILS
RUN apt install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev -y


# INSTALL IGNITION GAZEBO
RUN wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null

RUN apt update; apt install ignition-fortress -y


# DISPLAY STUFF
RUN wget -q -O- https://packagecloud.io/dcommander/turbovnc/gpgkey | gpg --dearmor >/etc/apt/trusted.gpg.d/TurboVNC.gpg
RUN echo "deb [signed-by=/etc/apt/trusted.gpg.d/TurboVNC.gpg] https://packagecloud.io/dcommander/turbovnc/any/ any main" | tee /etc/apt/sources.list.d/turbovnc.list > /dev/null

RUN apt update; apt install turbovnc -y
RUN apt install xfce4 terminator -y
RUN update-alternatives --set x-terminal-emulator /usr/bin/terminator


# INSTALL ROS2
RUN apt install software-properties-common -y
RUN pip3 install vcstool colcon-common-extensions
RUN add-apt-repository universe

RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

RUN apt update; apt install ros-humble-desktop -y

RUN pip3 install rosdep

RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
RUN echo "export GZ_VERSION=fortress" >> /root/.bashrc


################### YOUR COMMANDS ###################
