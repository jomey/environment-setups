# Add a SSL pem
## Convert to .crt
openssl x509 -in ssl_cert.pem -inform PEM -out ssl_cert.crt

## Add to ca-certificates
cp ssl_cert.crt /usr/local/share/ca-certificates/extra/

## Re-run configure
dpkg-reconfigure ca-certificates

