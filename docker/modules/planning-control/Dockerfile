# hadolint global ignore=DL3006,DL3008,DL3013
FROM ghcr.io/autowarefoundation/autoware:latest-runtime
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
WORKDIR /autoware

# Copy the launch file
COPY docker/modules/planning-control/planning-control.launch.xml /autoware/launch/planning-control.launch.xml

# Create entrypoint
COPY docker/etc/ros_entrypoint.sh /ros_entrypoint.sh
RUN chmod +x /ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
