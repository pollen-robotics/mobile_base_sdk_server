# Generate reachy_mobile_base.service
# Put this service file in ~/.config/systemd/user

tee reachy_mobile_base.service <<EOF
[Unit]
Description=Mobile base SDK server service

[Service]
ExecStartPre=/bin/sleep 10
ExecStart=/usr/bin/bash /home/reachy/reachy_ws/src/mobile_base_sdk_server/launch_mobile_base.bash
Environment="PATH=/opt/ros/foxy/bin:/home/reachy/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/reachy/.local>

[Install]
WantedBy=default.target
EOF
