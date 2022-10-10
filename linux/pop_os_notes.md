### System wide shell extensions
```script
/usr/share/gnome-shell/extensions
```

## Autostart
### System-wide
```script
/etc/xdg/autostart
```
### User
```script
~/.config/autostart
```

### Nautilus view preferences
```script
~/.local/share/gvfs-metadata/
```

### Check for GNOME extension errors
```script
journalctl /usr/bin/gnome-shell | grep
```
### Run single user mode
```script
init 1
```

### Luks keys
```script
/etc/luks-keys/
```

### Get distribution name
```script
lsb_release -cs
```

### Inspect system settings
```script
gsettings
```

Example: List keys for touchpad peripheral
```
gsettings list-recursively org.gnome.desktop.peripherals.touchpad
```

### Troubleshoot wifi issues
Check messages from boot time
```
sudo dmesg | grep iwlwifi
```

### Hold a package at current installed version
```
apt-mark hold <package-name>
```
Verify:
```
apt-mark showhold
```

### Set CPU frequency scaling to 'powersave'
```
echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
```

## Flatpak
### Cleanup objects
```
flatpak repair
```
### Remove unused
```
flatpak uninstall --unused
```
