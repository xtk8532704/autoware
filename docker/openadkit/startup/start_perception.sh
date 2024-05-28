#!/bin/bash
source /opt/ros/humble/setup.bash
source /autoware/install/setup.bash
ros2 launch /autoware/launch/perception.launch.xml map_path:=/autoware_map/sample-map-rosbag vehicle_model:=sample_vehicle sensor_model:=sample_sensor_kit