### System wide shell extensions
```script
/usr/share/gnome-shell/extensions
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
