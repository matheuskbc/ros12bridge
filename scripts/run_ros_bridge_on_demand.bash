SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
source $SCRIPT_DIR/setup_bridge.bash
rosparam load $SCRIPT_DIR/../src/bridge_configurations/config/bridge_config.yaml
ros2 run ros1_bridge parameter_bridge