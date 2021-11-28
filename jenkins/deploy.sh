#!/bin/bash

echo "Deploy stage"

scp docker-compose.yaml jenkins@swarm-manager:/home/jenkins/docker-compose.yaml
ssh jenkins@swarm-manager \

DATABASE_URI=$DATABASE_URI \
docker stack deploy --compose-file docker-compose.yaml todo-app