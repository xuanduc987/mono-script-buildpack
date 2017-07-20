export PATH="$PATH:/app/mono/bin:/usr/local/bin:/usr/bin:/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/app/mono/lib"
if ! [ -L "/app/mono" ]; then
  ln -s vendor/mono /app
  # Certs sync
  /app/mono/bin/cert-sync --user /etc/ssl/certs/ca-certificates.crt
fi
