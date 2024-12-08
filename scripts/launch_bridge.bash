#! /bin/bash
tmux new-session -d



# Run ros bridge
tmux send-keys -t 0 'bash ./scripts/run_ros_bridge_on_demand.bash' C-m

tmux -2 attach-session 