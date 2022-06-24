from launch import LaunchDescription

from launch_ros.actions import Node

import os
from ament_index_python.packages import get_package_share_directory


def generate_launch_description():
    ld = LaunchDescription()

    config = os.path.join(
        get_package_share_directory('zuuu_hal'),
        'config',
        'params.yaml'
    )

    ld.add_action(
       Node(
        package='zuuu_hal',
        executable='hal',
        parameters=[config]
        )
    )

    ld.add_action(
        Node(
            package='mobile_base_sdk_server',
            executable='mobile_base_sdk_server',
        ),
    )
    return ld
