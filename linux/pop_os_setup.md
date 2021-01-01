## Apt installs
```script
apt install gnome-tweak-tool \
  dconf-editor \
  localepurge \
  gufw \
  gnome-dictionary \
```

### Preview files in gnome
```script
apt install gnome-sushi
```script
```

### iPad connection
```script
apt install libimobiledevice-utils
```

### Terminator emulation
```script
add-apt-repository ppa:mattrose/terminator
apt install terminator
```

### Bluetooth sound
```script
add-apt-repository ppa:berglh/pulseaudio-a2dp
apt install pulseaudio-modules-bt libldac

apt update
```

## Remove user flatpack, add as system
### As user
```script
flatpak remote-delete flathub
```
### As root
```script
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
### Manage permissions
```script
flatpak install flathub com.github.tchx84.Flatseal
```

## Exchange server
```script
apt install evolution
apt install evolution-ews
```script
```

### Unmaximize launched windows
```script
gsettings set org.gnome.mutter auto-maximize false
```

### Disable default folder re-creation
#### Set to `false`
```script
vi /etc/xdg/user-dirs.conf
```
#### Edit the user folders
```script
vi ~/.config/user-dirs.dirs
```

## Swap Apple keyboard fn key
```script
vi /etc/modprobe.d/hid_apple.conf
```
### Add
```script
options hid_apple fnmode=2
```
### Trigger copying to bootfile
```script
sudo update-initramfs -u -k all
```

## Set default sound and disable auto-switch
### Copy device name from list of devices
```script
pactl list short sinks
```
### Config file: `/etc/pulse/default.pa`
#### Set default
```script
set-default-sink <name>
```
#### Disable switch
Comment line with `load-module module-switch-on-connect`

## Remove PopShop daemon
```script
mv /usr/share/applications/io.elementary.appcenter-daemon.desktop /data/appcenter-daemon/
rm /etc/xdg/autostart/io.elementary.appcenter-daemon.desktop
```

## Configure journald
```script
vi /etc/systemd/journald.conf
systemctl restart systemd-journald
```

## Reduce network manager log level
```script
nmcli general logging level WARN
```

### Test cron
#### - No dot in cron script names
#### - Make sure of #! at the beginning
```script
run-parts -v /etc/cron.hourly
```

# MySQL
```script
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
dpkg -i mysql-apt-config_0.8.12-1_all.deb 
apt update
apt install mysql-client-server=5.7.31-1ubuntu18.04
apt install mysql-client=5.7.31-1ubuntu18.04
apt install mysql-community-server=5.7.31-1ubuntu18.04
mysql_secure_installation 
```
## Freeze version
```script
apt-mark hold mysql-server
apt-mark hold mysql-community-server
apt-mark hold mysql-client
apt-mark hold mysql-community-client
```
## Move mysql data dir, grant access to new location
```script
vi /etc/apparmor.d/tunables/alias 
systemctl restart apparmor
```
## Search for upgrade; get version number
```script
apt-cache policy mysql-server
```
## Upgrade
```script
apt upgrade mysql-client=5.7.32-1ubuntu18.04 mysql-community-client=5.7.32-1ubuntu18.04 mysql-community-server=5.7.32-1ubuntu18.04 mysql-server=5.7.32-1ubuntu18.04
```
