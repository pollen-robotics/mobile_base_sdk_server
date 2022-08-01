# source ROS2 Foxy setup file.
# shellcheck disable=SC1091
source /opt/ros/foxy/setup.bash
source $HOME/reachy_ws/install/setup.bash
source $HOME/reachy_tips/config/reachy_ros_config

# Start the ROS2 launch file
zuuu_model=$(reachy-identify-zuuu-model)

if [ $zuuu_model != none ];
then
    echo "Starting mobile base launch file."
    ros2 launch mobile_base_sdk_server run_mobile_base_sdk_server_and_hal.launch.py
else
    echo "No mobile base found in this Reachy model."
fi
