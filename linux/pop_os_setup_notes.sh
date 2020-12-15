# ------------------------------------- #
# Running notes on tweaks to the system #
# or helpful commands to trouble shoot  #
# ------------------------------------- #

# Apt installs
apt install gnome-tweak-tool \
  dconf-editor \
  localepurge \
  gufw \
  gnome-dictionary \
  terminator

# Preview files in gnome
apt install gnome-sushi

# iPad connection
apt install libimobiledevice-utils

# System wide shell extensions
/usr/share/gnome-shell/extensions
## Ubuntu dock from latest source
## Check for errors
journalctl /usr/bin/gnome-shell | grep

# MySQL
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
dpkg -i mysql-apt-config_0.8.12-1_all.deb 
apt update
apt install mysql-client-server=5.7.31-1ubuntu18.04
apt install mysql-client=5.7.31-1ubuntu18.04
apt install mysql-community-server=5.7.31-1ubuntu18.04
mysql_secure_installation 

## Freeze version
apt-mark hold mysql-server
apt-mark hold mysql-community-server
apt-mark hold mysql-client
apt-mark hold mysql-community-client
## Move mysql data dir, grant access to new location
vi /etc/apparmor.d/tunables/alias 
systemctl restart apparmor
## Search for upgrade; get version number
apt-cache policy mysql-server
## Upgrade
apt upgrade mysql-client=5.7.32-1ubuntu18.04 mysql-community-client=5.7.32-1ubuntu18.04 mysql-community-server=5.7.32-1ubuntu18.04 mysql-server=5.7.32-1ubuntu18.04


# Remove user flatpack, add as system
## As user
flatpak remote-delete flathub
## As root
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
## Manage permissions
flatpak install flathub com.github.tchx84.Flatseal

# Exchange server
apt install evolution
apt install evolution-ews

# Settings

## Unmaximize launched windows 
gsettings set org.gnome.mutter auto-maximize false

## Nautilus view preferences
~/.local/share/gvfs-metadata/

## Disable default folder re-creation
### Set to false
vi /etc/xdg/user-dirs.conf
### Edit the user folders
vi ~/.config/user-dirs.dirs

# Swap Apple keyboard fn key
vi /etc/modprobe.d/hid_apple.conf
## Add
options hid_apple fnmode=2

## Trigger copying to bootfile
sudo update-initramfs -u -k all

# Set default sound and disable auto-switch
## Copy deivce name from list of devices
pactl list short sinks
## Config file: /etc/pulse/default.pa
### Set default
set-default-sink <name>
### Disable switch
# Comment line with load-module module-switch-on-connect

# Remove PopShop daemon
mv /usr/share/applications/io.elementary.appcenter-daemon.desktop /data/appcenter-daemon/
rm /etc/xdg/autostart/io.elementary.appcenter-daemon.desktop

# Configure journald
vi /etc/systemd/journald.conf
systemctl restart systemd-journald

# Reduce network manager log level
nmcli general logging level WARN

# Run single user mode
init 1

# Luks keys
/etc/luks-keys/

# Test cron
# - No dot in cron script names
# - Make sure of #! at the beginning
run-parts -v /etc/cron.hourly

# Get distribution name
lsb_release -cs
