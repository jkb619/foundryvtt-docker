#!/bin/bash

docker run  -it --env FOUNDRY_USERNAME='tulta-munille'   --env FOUNDRY_PASSWORD='Wp1u8Y4Efgs4'   --publish 30000:30000/tcp --publish 22:22/tcp --volume /home/john/foundrydata:/data   jobrown/foundryvtt:11.308.0 
