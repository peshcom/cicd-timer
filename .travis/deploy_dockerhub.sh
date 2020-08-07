#!/bin/sh
TAG="latest"
OUTPUT_Docker=$DOCKER_USER"/cicd-timer"

docker login --username $DOCKER_USER --password $DOCKER_PASS
docker build -f Dockerfile -t $OUTPUT_Docker:$TAG .
docker push $OUTPUT_Docker