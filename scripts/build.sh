#! /usr/bin/env bash
set -x
set -e

docker run --rm -v /tmp/gradle-caches:/root/.gradle/caches -v $WORKDIR/pipelines/$GO_PIPELINE_NAME:/opt/app -w /opt/app gradle:4.4.1-jdk8 gradle clean bootRepackage
if [[ -z $DOCKER_REGISTRY ]]; then
  DOCKER_REGISTRY=10.29.5.155:5000
fi
IMAGE_NAME=${DOCKER_REGISTRY}/tw-ms-train/user-service:${GO_PIPELINE_COUNTER}
docker build -t $IMAGE_NAME .
docker push $IMAGE_NAME
docker rmi $IMAGE_NAME
