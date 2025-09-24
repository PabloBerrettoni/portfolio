#!/bin/sh
while true; do
  echo "[INFO] Running certbot renew..."
  certbot renew --quiet
  echo "[INFO] Reloading nginx..."
  nginx -s reload
  echo "[INFO] Sleeping for 12h..."
  sleep 12h
done
