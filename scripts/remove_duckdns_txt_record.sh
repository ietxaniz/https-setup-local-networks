#!/bin/sh

# Replace YOUR_TOKEN with your actual DuckDNS token
DUCKDNS_TOKEN="YOUR_DUCKDNS_TOKEN"
# Your DuckDNS domain
DOMAIN="inner-private"

# Update the TXT record
curl "https://www.duckdns.org/update?domains=$DOMAIN&token=$DUCKDNS_TOKEN&txt=removed&verbose=true&clear=true"
