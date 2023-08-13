#! /bin/bash
tmux new-session -d

# Setup environment variables 
# Load ros1 and ros2
tmux send-keys -t 0 'source ./scripts/setup_bridge.bash' C-m

# Run ros bridge
tmux send-keys -t 0 'bash ./scripts/run_ros_bridge_1_to_2_full.bash' C-m

tmux -2 attach-session 