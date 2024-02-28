#!/bin/bash
VERSION=$(grep "__version__ =" src/_version.py | cut -d '=' -f 2 | tr -d "'\" | xargs")
SSH_PUB_KEY="$(cat ~/.ssh/id_rsa.pub)"
echo "$SSH_PUB_KEY"
# old 10.291.0
docker build --build-arg VERSION="${VERSION}" --build-arg SSH_PUB_KEY="$SSH_PUB_KEY" --tag <docker image tag> .
