#!/bin/sh

# Replace YOUR_TOKEN with your actual DuckDNS token
DUCKDNS_TOKEN="YOUR_DUCKDNS_TOKEN"
# Your DuckDNS domain
DOMAIN="inner-private"
# The value provided by Certbot
VALIDATION_STRING="$CERTBOT_VALIDATION"

# Update the TXT record
curl "https://www.duckdns.org/update?domains=$DOMAIN&token=$DUCKDNS_TOKEN&txt=$VALIDATION_STRING"&verbose=true
sleep 90
