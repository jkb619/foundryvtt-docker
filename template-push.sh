#!/bin/bash
VERSION=$(grep "__version__ =" src/_version.py | cut -d '=' -f 2 | tr -d "'\"" | xargs)
docker login -u <docker.io_userid> -p <docker.io_password> docker.io
docker push <image_tag_from_build>
