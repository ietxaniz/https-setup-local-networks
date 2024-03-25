# create_certificates.sh
#!/bin/bash
# Define your domain
DOMAIN="inner-private.duckdns.org"
# Run Certbot in Docker
docker run -it --rm \
    -v https_keys:/etc/letsencrypt \
    -v https_challenge:/var/lib/letsencrypt \
    -v "$(pwd)/scripts:/scripts" \
    --env CERTBOT_DOMAIN="$DOMAIN" \
    certbot-with-curl \
    certonly \
    --staging \
    --verbose \
    --manual \
    --preferred-challenges dns \
    --manual-auth-hook "/scripts/add_duckdns_txt_record.sh $DOMAIN" \
    --manual-cleanup-hook "/scripts/remove_duckdns_txt_record.sh $DOMAIN" \
    -d "$DOMAIN" \
    --non-interactive \
    --agree-tos \
    --email me@inner-private.duckdns.org
