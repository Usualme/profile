#!/bin/bash

S_USER=guest
S_PORT=2222
S_HOST=ali
S_SERVICE=guest-tunnel

sudo su

useradd -c 'guest from remote' $S_USER -m

apt udpate
apt install autossh

cat > /etc/systemd/system/${S_SERVICE}.service <<EOF
[Unit]
Description=ssh tunnel for remote guest
Wants=network-online.target
After=network-online.target

[Service]
Type=simple
User=${S_USER}
EnvironmentFile=/etc/default/${S_SERVICE}
ExecStart=/usr/bin/autossh \$SSH_OPTIONS
Restart=always
RestartSec=60

[Install]
WantedBy=multi-user.target
EOF

cat > /etc/default/${S_SERVICE} <<EOF
AUTOSSH_POLL=60
AUTOSSH_FIRST_POLL=30
AUTOSSH_GATETIME=0
AUTOSSH_PORT=22000
SSH_OPTIONS="-CNgR ${S_PORT}:localhost:22 ${S_HOST}"
EOF

cat > /etc/ssh/sshd_config <<EOF
PasswordAuthentication no
EOF

systemctl daemon-reload
systemctl start ${S_SERVICE}
systemctl enable ${S_SERVICE}
systemctl status ${S_SERVICE}