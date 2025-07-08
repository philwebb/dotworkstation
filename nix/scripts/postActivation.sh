#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Should be root"
    exit
fi

username="$1"
if [[ -z "${username}" ]]; then
    echo "First arg should be username"
    exit
fi

echo "Applying system wide settings..."

# Install Color Sync Profiles
cp "/Users/${username}"/.workstation/colorsyncprofiles/* /Library/ColorSync/Profiles

# Show various folders
chflags nohidden /Volumes

# Disable the sound effects on boot
/usr/sbin/nvram SystemAudioVolume=" "
/usr/sbin/nvram StartupMute=%01

# Enable lid wakeup
pmset -a lidwake 1

# Restart automatically on power loss
pmset -a autorestart 1

# Restart automatically if the computer freezes
/usr/sbin/systemsetup -setrestartfreeze on 2>/dev/null 1>&2

# Restore power defaults
pmset restoredefaults 2>/dev/null 1>&2

# Set standby delay to 24 hours (default is 1 hour)
pmset -a standbydelay 86400

# Sleep the display after 15 minutes
pmset -a displaysleep 15

# Disable machine sleep while charging
pmset -c sleep 0

# Set machine display sleep to 5 minutes and sleep to 10 on battery
pmset -b displaysleep 5
pmset -b sleep 10

# Never go into computer sleep mode
/usr/sbin/systemsetup -setcomputersleep Off 2>/dev/null 1>&2

# Hibernation mode
# 0: Disable hibernation (speeds up entering sleep mode)
# 3: Copy RAM to disk so the system state can still be restored in case of a
#    power failure.
pmset -a hibernatemode 0

# Enable HiDPI display modes (requires restart)
defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

scriptsDir=$(dirname "$0")
sudo -i -u "${username}" ${scriptsDir}/postUserActivation.sh "${username}"
