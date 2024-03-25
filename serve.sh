#!/bin/bash
docker run \
  --name rev-proxy \
  -p 80:80 \
  -p 443:443 \
  -v https_keys:/etc/letsencrypt \
  -v https_challenge:/var/lib/letsencrypt \
  -v $(pwd)/nginx:/etc/nginx/conf.d \
  -v $(pwd)/inner-private.duckdns.org:/var/www/inner-private.duckdns.org \
  nginx:1.25.1-alpine3.17-slim
  