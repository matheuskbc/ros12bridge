SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
bash SCRIPT_DIR/setup_bridge.bash
ros2 run ros1_bridge dynamic_bridge --bridge-all-1to2-topics