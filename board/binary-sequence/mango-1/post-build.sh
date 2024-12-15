#!/bin/sh
set -ue

if [ -e "${TARGET_DIR}/etc/inittab" ]; then
    sed -i "/# HDMI console/d;\
        /GENERIC_SERIAL/a\
tty1::respawn:/usr/bin/froot1-init.sh wozmon # HDMI console\n\
tty2::respawn:/usr/bin/froot1-init.sh cassette # HDMI console\n\
tty3::respawn:/usr/bin/froot1-init.sh basic # HDMI console\n\
tty4::respawn:/usr/bin/froot1-init.sh hamurabi # HDMI console\n\
tty5::respawn:/usr/bin/froot1-init.sh apple30th # HDMI console\n\
tty12::respawn:/sbin/getty -L tty12 0 vt100 # HDMI console" \
        "${TARGET_DIR}/etc/inittab"
fi
