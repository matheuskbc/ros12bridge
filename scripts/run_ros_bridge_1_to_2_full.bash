SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
source $SCRIPT_DIR/setup_bridge.bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=ubuntu
ros2 run ros1_bridge dynamic_bridge --bridge-all-1to2-topics