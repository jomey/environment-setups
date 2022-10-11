## Apt installs
```script
apt install gnome-tweak-tool \
  dconf-editor \
  localepurge \
  gufw \
  gnome-dictionary \
  localepurge
```

### TLP package
## Battery power manager
```
apt install tlp

systemctl enable tlp.service
```

### Preview files in gnome
```script
apt install gnome-sushi
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

### Add a color scheme
#### https://github.com/Mayccoll/Gogh
#### Setup:
```
apt-get install dconf-cli uuid-runtime
```

#### Add a theme
```
bash -c "$(wget -qO- https://git.io/vQgMr)"
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

### Add /home/shared to app armor for shared access
```
sudo dpkg-reconfigure apparmor
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
## Fix toucpad scrolling
### Remove xserver-xorg-input-synaptics
```
apt-get remove xserver-xorg-input-synaptics
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

## Disable Bluetooth at startup
```script
vi /etc/bluetooth/main.conf
# ===
AutoEnable=false
```

### Test cron
#### - No dot in cron script names
#### - Make sure of #! at the beginning
```script
run-parts -v /etc/cron.hourly
```

# MySQL
## Move mysql data dir, grant access to new location
```script
vi /etc/apparmor.d/tunables/alias 
systemctl restart apparmor
```
