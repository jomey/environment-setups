## List all installed kernels
```
dpkg -l linux-{image,headers}*
```

## Remove
### Copy and paste the unwanted from the output above
```
apt-get purge linux-image-X.XX.XX-generic linux-headers-X.XX.XX-generic
```

