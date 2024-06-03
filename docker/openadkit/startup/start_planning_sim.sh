#!/bin/bash
source /opt/ros/humble/setup.bash
source /autoware/install/setup.bash
ros2 launch /autoware/launch/planning.launch.xml map_path:=/autoware_map vehicle_model:=pixkit sensor_model:=pixkit_sensor_kit use_sim_time:=true launch_vehicle_interface:=false system_run_mode:=logging_simulation launch_system_monitor:=false launch_sensing_driver:=false