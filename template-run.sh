#!/bin/bash

VERSION=$(grep "__version__ =" src/_version.py | cut -d '=' -f 2 | tr -d "'\"" | xargs)

docker run  -it --env FOUNDRY_USERNAME='<founder_username' \
		--env FOUNDRY_PASSWORD='<founder_password>'  \
	       	--publish 30000:30000/tcp \
		--publish 22:22/tcp \
		--volume <local_dir_to_mount>:/data \
		<docker_image_tag>
