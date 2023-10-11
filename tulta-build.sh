#!/bin/bash

SSH_PUB_KEY="$(cat ~/.ssh/id_rsa.pub)"
echo "$SSH_PUB_KEY"
# old 10.291.0
docker build \
  --build-arg VERSION=11.308.0 \
  --build-arg SSH_PUB_KEY="$SSH_PUB_KEY" \
  --tag jobrown/foundryvtt:11.308.0 .
