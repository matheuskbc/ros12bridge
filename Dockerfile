FROM ros:noetic-ros-base
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/src/ros2_ws

RUN sudo apt update && sudo apt install software-properties-common -y
RUN sudo add-apt-repository universe
RUN sudo apt update && sudo apt install curl -y
RUN sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

RUN sudo apt update && sudo apt install -yq \
    ros-foxy-ros-base \
    python3-argcomplete \
    ros-foxy-ros1-bridge \
    ros-foxy-rmw-cyclonedds-cpp


COPY ./scripts ./scripts

ENTRYPOINT [ "bash", "scripts/run_ros_bridge_1_to_2_full.bash" ]