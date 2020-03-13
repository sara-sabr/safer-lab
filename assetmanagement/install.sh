#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run script with sudo"
  exit
fi

# Fix bug with signature, force create folder.
mkdir -p /srv/safer-lab/assetmanagement/data/data/private_uploads/signatures

# Install the service script
cp snipeit.service /etc/systemd/system/snipeit.service
systemctl enable snipeit


