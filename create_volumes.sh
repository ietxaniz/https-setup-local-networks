# create_volumes.sh
#!/bin/bash
# Remove existing volumes (if necessary)
docker volume rm https_keys https_challenge
# Create new volumes for storing certificates and challenges
docker volume create https_keys
docker volume create https_challenge
