#!/bin/bash

set -ev
    
echo "Deployment init"

docker build -t maismonitoria/api_monitoria:homolog .
docker login -u "$DOCKERUSERNAME" -p "$DOCKERPASSWORD"
docker push maismonitoria/api_monitoria:homolog
