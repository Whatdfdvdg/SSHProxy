#!/bin/bash
passwd <<EOF
${ROOTPASS}
${ROOTPASS}
EOF

/usr/sbin/sshd-keygen
/usr/sbin/sshd -E /root/sshd_log  -f /root/sshd_config -p 22

while true;do sleep 10; done
